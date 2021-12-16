//
//  SecretsManager.swift
//  SampleFrameworkTwo
//
//  Created by Denis Fisenko on 12/16/21.
//

import Foundation

public class SecretsManager {

    var isAuthorized: Bool

    public init(key: String) {
        isAuthorized = Approved.keys.contains(key)
    }

    public func readSecret() -> String? {
        isAuthorized ? "Secret" : nil
    }
}


private struct Approved {
    static let keys = ["13245", "asfdg"]
}
