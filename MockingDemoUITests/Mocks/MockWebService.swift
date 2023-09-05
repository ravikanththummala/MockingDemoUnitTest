//
//  MockWebService.swift
//  MockingDemoUITests
//
//  Created by Ravikanth Thummala on 9/5/23.
//

import Foundation
//@testable import MockingDemo

class MockWebService: NetworkService {
    
    func login(username: String, password: String, completion: @escaping (Result<Void, NetworkError>) -> Void) {
        
        if username == "JohnDoe" && password == "Password" {
            completion(.success(()))
        }else {
            completion(.failure(.notAuthenticated))
        }
    }
}
