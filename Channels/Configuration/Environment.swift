//
//  Environment.swift
//  Channels
//
//  Created by Ahmed Samir on 3/23/20.
//  Copyright © 2020 Ibtikar. All rights reserved.
//

import Foundation

public enum Environment {
    // MARK: - Keys
    enum Keys {
        enum Plist {
            static let rootURL = "BASE_URL"
        }
    }

    // MARK: - Plist
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()

    // MARK: - Plist values
    static let rootURL: String = {
        guard let rootURLstring = Environment.infoDictionary[Keys.Plist.rootURL] as? String else {
            fatalError("Root URL not set in plist for this environment")
        }
        let baseUrl = "http://\(rootURLstring)"
        guard let url = URL(string: baseUrl ) else {
            fatalError("Root URL is invalid")
        }
        return url.absoluteString
    }()
}
