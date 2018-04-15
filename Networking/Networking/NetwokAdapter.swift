//
//  NetwokAdapter.swift
//  Networking
//
//  Created by Muhksin Hilmi on 15/04/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import Moya

struct NetworkAdapter: PluginType {
    
    static func request(target: ApiService, success successCallback: @escaping (Response) -> Void, error errorCallback: @escaping (Response) -> Void, failure failureCallback: @escaping (MoyaError) -> Void) {
        let token: String = "token"
        let authPlugin = AccessTokenPlugin(tokenClosure: token)
        let provider = MoyaProvider<ApiService>(plugins: [NetworkLoggerPlugin(verbose: true),authPlugin])
        provider.request(target) { (result) in
            switch result {
            case .success(let response):
                if response.statusCode >= 200 && response.statusCode <= 300 {
                    successCallback(response)
                } else {
                    errorCallback(response)
                }
            case .failure(let error):
                failureCallback(error)
            }
        }
    }
}
