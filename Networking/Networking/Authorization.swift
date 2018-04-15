//
//  Authorization.swift
//  Networking
//
//  Created by Muhksin Hilmi on 15/04/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import Moya

extension ApiService: AccessTokenAuthorizable{
    var authorizationType: AuthorizationType {
        switch self {
        case .question:
            return .none
//        default:
//            return .bearer
        }
    }
}
