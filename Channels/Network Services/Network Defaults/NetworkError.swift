//
//  NetworkError.swift
//  Channels
//
//  Created by Ahmed Samir on 3/24/20.
//  Copyright © 2020 Ibtikar. All rights reserved.
//

import Foundation
import Moya

enum `Type`:String, Codable {
    case business
    case system
    case mapping
    case formValidation
}
struct NetworkError: Codable, Error {

    var code: Int?
    var message: String?
    var type: Type?
    var innerErrors: [String: [String]]?

    init () {

    }

    enum CodingKeys: String, CodingKey {

          case message = "message"
          case innerErrors = "errors"

      }
    
    init(message: String, innerErrors: [String: [String]]) {
        self.message = message
        self.innerErrors = innerErrors
        self.type = .business
        self.code = -1
    }
    
    init(error: MoyaError) {
        if case let MoyaError.underlying(underlyingError, nil) = error {
            let nserror = underlyingError as NSError
            self.code = nserror.code
        } else {
            self.code = error.errorCode
        }
       
        self.message = error.errorDescription

        switch error {
        case .underlying(let error, _):
            self.type = .system
            print(error)
        //            userInfo["error"] = error
        default :
            self.type = .mapping
        }
    }
}

extension NetworkError {
    static let parseError: NetworkError = {
        var error = NetworkError()
        error.type = Type.mapping
        return error
    }()
}



