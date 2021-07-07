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
    
    @Published var results: [Contact] = []
    
    func login() {
        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map { $0.data }
            .decode(type: [Contact].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \ContactsViewModel.contacts, on: self)
    }
}
