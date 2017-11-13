//
//  DataAreaRequestClient.swift
//  emplesMVC
//
//  Created by Vasily Popov on 11/7/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

import Foundation
import ObjectMapper

class DataFilePersistenceGateway {
    
    var factory :DataRequestProtocol
    
    required init(with factory:DataRequestProtocol) {
        self.factory = factory
    }
}

extension DataFilePersistenceGateway : DataAreaGatewayProtocol {
    func getAreas(with response: @escaping DataAreaGatewayResponse) {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            self?.factory.fetchAllAreas(with: { (result) in
                DispatchQueue.main.async {
                    response(result)
                }
                
            })
        }
    }
}
