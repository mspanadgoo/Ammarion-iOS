//
//  LoginViewModel.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/16/1400 AP.
//

import SwiftUI
import Combine

class LoginViewModel: ObservableObject {
    private let url = "api/v1/login"
    private var task: AnyCancellable?

    enum LoginType: String {
        case EMAIL
        case MOBILEEMAIL
        case MOBILE
    }
    
    let username: String
    let password: String
    let loginType: LoginType
    
    @Published var result: [LoginResponseModel] = []
    
    init(username: String, password: String, type: LoginType) {
        self.username = username
        self.password = password
        self.loginType = type
    }
    
    func login() {
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "POST"
        request.httpBody = getData()
        request.allHTTPHeaderFields = Utility().getHTTPHeaders()
        
        task = URLSession.shared.dataTaskPublisher(for: request)
            .map { $0.data }
            .decode(type: [LoginResponseModel].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \LoginViewModel.result, on: self)
    }
    
    func getData() -> Data {
        guard let data = try? JSONEncoder().encode(LoginModel(groupId: "", password: password, type: loginType.rawValue, username: username)) else { return Data() }
        return data
    }
}
