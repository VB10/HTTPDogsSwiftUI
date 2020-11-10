//
//  BaseResponse.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 11.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation

struct BaseResponse<T : Codable> {
    var model: T?
    var message: String?
}
