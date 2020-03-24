//
//  NetworkDefaults.swift
//  Channels
//
//  Created by Ahmed Samir on 3/24/20.
//  Copyright © 2020 Ibtikar. All rights reserved.
//

import Foundation
struct NetworkDefaults {
    var baseUrl: String
    var apiKey: String
    static var `defaults` : NetworkDefaults {
        let instance = NetworkDefaults(baseUrl: "error", apiKey: "")
        return instance
    }
}
