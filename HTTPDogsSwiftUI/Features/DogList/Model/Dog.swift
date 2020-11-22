//
//  Dog.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 12.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation


struct Dog: Identifiable, Codable {
    var id = UUID()

    let code: Int
    let dogMockDescription: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case code
        case dogMockDescription = "description"
        case imageURL = "imageUrl"
    }
}
