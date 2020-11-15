//
//  NetworkService.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 15.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation


final class NetworkService {

    private static var _instance: NetworkService?

    public static var instance: NetworkService {
        get {
            if let instance = _instance {
                return instance
            } else {
                let _instance = NetworkService()
                self._instance = _instance
                return _instance
            }
        }
    }

    private init() { }

    private let baseUrl = "https://hwasampleapi.firebaseio.com/"

    lazy var manager: INetworkManager = {
        return NetworkManager(config: NetworkConfig(baseUrl: self.baseUrl))
    }()
}
