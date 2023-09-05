//
//  File.swift
//  MockingDemo
//
//  Created by Ravikanth Thummala on 9/5/23.
//

import Foundation

class NetworkServiceFactory {
    
    static func create() -> NetworkService {
        let enviroemnt = ProcessInfo.processInfo.environment["ENV"]
        if let enviroemnt = enviroemnt {
            if enviroemnt == "TEST" {
                return MockWebService()
            }else{
                return Webservice()
            }
        }else{
            return Webservice()
        }
    }
}
