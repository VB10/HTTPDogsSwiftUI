//
//  INetworkManager.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 11.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation


protocol INetworkManager {
    var config: NetworkConfig { get set }

    init(config: NetworkConfig)
    
    func fetch<T>(path: NetworkPath,
                  paramaters: [String: String]?,
                  onSuccess: @escaping Success<T>,
                  onError: @escaping Error)

}
