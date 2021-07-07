//
//  APIService.swift
//  payment-sdk
//
//  Created by Mohammad Sadegh Panadgoo on 2/12/1400 AP.
//

import Foundation
import Combine

struct APIClient {
    
    func sendRequest(servicePath: String, jsonData: Data?, completion: @escaping (Data?, Bool) -> Void) {
        let data = Data()
        let url = URL(string: "")!
        let request = self.getURLRequest(URL: url, Data: data, HTTPHeaderFields: self.getHTTPHeaderFields())

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Fetch failed: \(error.localizedDescription)")
                completion(nil, false)
            } else if let httpResponse = response as? HTTPURLResponse {
                completion(data, (200...299).contains(httpResponse.statusCode) )
            }
            
        }.resume()
    }
}
