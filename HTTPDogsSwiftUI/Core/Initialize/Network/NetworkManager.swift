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
    func fetch<T>(path: NetworkPath, paramaters: [String : String]?, onSuccess: @escaping (BaseResponse<T>) -> Void, onError: @escaping Error) where T : Decodable, T : Encodable {
        
    }
    
    var config: NetworkConfig

    init(config: NetworkConfig) {
        self.config = config
    }

   


//    func get<T: Codable>(
//        path: NetworkPath,
//        paramaters: [String: String]?,
//        onSuccess: @escaping Success<T>,
//        onError: @escaping Error
//    ) {
//
//
//        AF.request(networkRequestUrl(path),
//                   method: .get,
//                   parameters: paramaters
//        ).validate().responseDecodable(of: T.self)
//        { (response) in
//            guard let model = response.value else {
//                onError(BaseError(response.error))
//                return
//            }
//
//            onSuccess(BaseResponse.init(model: model, message: ""))
//
//        }
//    }


}
