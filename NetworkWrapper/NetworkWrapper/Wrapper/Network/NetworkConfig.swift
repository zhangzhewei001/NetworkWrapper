//
//  ServiceConfig.swift
//  NetworkWrapper
//
//  Created by 张哲炜 on 09.03.21.
//

import Foundation

public protocol NetworkConfigurable {
    var baseURL: URL { get }
    var headers: [String: String] { get }
}

public struct ApiDataNetworkConfig: NetworkConfigurable {
    public let baseURL: URL
    public let headers: [String: String]
    
     public init(baseURL: URL,
                 headers: [String: String] = [:]) {
        self.baseURL = baseURL
        self.headers = headers
    }
}
