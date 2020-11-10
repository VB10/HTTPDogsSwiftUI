//
//  NetworkMethod.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 11.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation
import Alamofire

enum NetworkMethod {
    case GET
    case POST


    func method() throws -> HTTPMethod {
        switch self {
        case .GET:
            return HTTPMethod.get
        case .POST:
            return HTTPMethod.post
        default:
            throw ProjectErrors.notFoundMethod
        }
    }
}
