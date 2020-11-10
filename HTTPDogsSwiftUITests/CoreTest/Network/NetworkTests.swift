//
//  NetworkTests.swift
//  HTTPDogsSwiftUITests
//
//  Created by VB on 11.11.2020.
//  Copyright © 2020 VB. All rights reserved.
//

import XCTest

@testable import HTTPDogsSwiftUI

class NetworkTests: XCTestCase {
    let timeout: TimeInterval = 20.0
    var networkManager: INetworkManager!


    override func setUp() {
        super.setUp()
        networkManager = NetworkMockManager(config: NetworkConfig(baseUrl: "https://hwasampleapi.firebaseio.com/"))
    }

    func testGetAllDogs() {
        let expectation = self.expectation(description: "result")

        networkManager.fetch(path: .dogs, paramaters: nil, onSuccess: { (response: BaseResponse<[DogMock]>) in
            assert(true)
            
            expectation.fulfill()
        }) { (error) in
            assert(false)
            expectation.fulfill()

            print("false")
        }
        wait(for: [expectation], timeout: timeout)
    }

}
