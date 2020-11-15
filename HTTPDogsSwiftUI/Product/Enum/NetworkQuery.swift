//
//  NetworkQuery.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 15.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation


enum NetworkQuery: String {
    case orderBy = "orderBy"
    case limitToFirst = "limitToFirst"
    case startAt = "startAt"

    func value() -> String {
        switch self {
        case .limitToFirst:
            return "10"
        case .orderBy:
            return "\"code\""
        case .startAt:
            return ""
        }
    }
}
