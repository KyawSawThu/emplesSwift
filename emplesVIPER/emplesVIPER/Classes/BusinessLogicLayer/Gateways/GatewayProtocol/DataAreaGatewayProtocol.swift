//
//  DataAreaGatewayProtocol.swift
//  emplesVIPER
//
//  Created by Vasily Popov on 11/11/17.
//  Copyright © 2017 Vasily Popov. All rights reserved.
//

import Foundation
import ObjectMapper

typealias DataAreaGatewayResponse = ((Result<[Mappable]>) -> Void)

protocol DataAreaGatewayProtocol {
    func getAreas(with response:@escaping DataAreaGatewayResponse)
}

