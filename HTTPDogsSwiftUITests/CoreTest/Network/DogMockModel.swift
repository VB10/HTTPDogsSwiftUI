//
//  DogMockModel.swift
//  HTTPDogsSwiftUITests
//
//  Created by VB on 11.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation

struct DogMock: Codable {
    let code: Int
    let dogMockDescription: String
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case code
        case dogMockDescription = "description"
        case imageURL = "imageUrl"
    }
}
