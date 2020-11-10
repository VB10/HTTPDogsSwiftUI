//
//  NetworkPath.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 11.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation


enum NetworkPath: String {
    case dogs = "dogs"


    func firebasePath() -> String {
        return "\(self.rawValue).json"
    }
}
