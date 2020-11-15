//
//  NetworkManager.swift
//  HTTPDogsSwiftUI
//
//  Created by VB on 11.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import Foundation
import Alamofire

typealias Success<T : Codable> = (BaseResponse<T>) -> Void
typealias Error = (BaseError) -> Void

final class NetworkManager: INetworkManager {

    var config: NetworkConfig


    required init(config: NetworkConfig) {
        self.config = config
    }

    func fetch<T>(path: NetworkPath, paramaters: [String: String]?,

                  method: HTTPMethod,

                  onSuccess: @escaping (BaseResponse<T>) -> Void, onError: @escaping Error) where T: Decodable, T: Encodable {

        AF.request(url(path),
                   method: method,
                   parameters: paramaters

        ).validate().responseDecodable(of: T.self)
        { (response) in
            guard let model = response.value else {
                onError(BaseError(afError: response.error))
                return
            }
            onSuccess(BaseResponse.init(model: model, message: ""))
        }
    }

    func url(_ path: NetworkPath) -> String
    {
        return config.baseUrl + path.firebasePath()
    }
}

