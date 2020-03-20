//
//  APIRequests.swift
//  Mitsein_payment
//
//  Created by Matias Mingo Seguel on 3/15/20.
//  Copyright © 2020 Matias Mingo Seguel. All rights reserved.
//

import Foundation

enum APIError:Error {
    case responseProblem
    case decodingProblem
    case otherProblem
}

struct APIRequest {
    let resourceURL: URL
    
    init(endpoint: String){
        let resourceString = "https://polar-ravine-14801.herokuapp.com/payment/new\(endpoint)"
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
    self.resourceURL = resourceURL
        }
    func save (_ messageToSave: Transaction, completion: @escaping(Result<Transaction, APIError>) -> Void){
        do {
            var urlRequest = URLRequest(url: resourceURL)
            urlRequest.httpMethod = "POST"
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpBody = try JSONEncoder().encode(messageToSave)
            
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { data, response, _ in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let jsonData = data else{
                    completion(.failure(.responseProblem))
                    return
                }
                do {
                    let messageData = try JSONDecoder().decode(Transaction.self, from: jsonData)
                    completion(.success(messageData))
                }catch{
                    completion(.failure(.decodingProblem))
                }
            }
            dataTask.resume()
        }catch{completion(.failure(.decodingProblem))}
    }
}
