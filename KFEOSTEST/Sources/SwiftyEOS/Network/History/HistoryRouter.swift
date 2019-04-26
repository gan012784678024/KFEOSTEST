//
//  HistoryRouter.swift
//  SwiftyEOS
//
//  Created by croath on 2018/7/19.
//  Copyright © 2018 ProChain. All rights reserved.
//

import Foundation

enum HistoryEndpoint {
    case GetKeyAccounts(pub: String)
    case GetTransaction(id: String)
}

class HistoryRouter: BaseRouter {
    var endpoint: HistoryEndpoint
    init(endpoint: HistoryEndpoint) {
        self.endpoint = endpoint
    }
    
    override var method: HTTPMethod {
        switch endpoint {
        case .GetKeyAccounts: return .post
        case .GetTransaction : return .post
        }
    }
    
    override var path: String {
        switch endpoint {
        case .GetKeyAccounts: return "/history/get_key_accounts"
        case .GetTransaction: return "/history/get_transaction"
        }
    }
    
    override var parameters: QueryParams {
        switch endpoint {
        default: return [:]
        }
    }
    
    override var body: Data? {
        switch endpoint {
        case .GetKeyAccounts(let pub):
            let encoder = JSONEncoder()
            let jsonData = try! encoder.encode(["public_key": "\(pub)"])
            return jsonData
        case .GetTransaction(let id):
            let encoder = JSONEncoder()
            let jsonData = try! encoder.encode(["id": "\(id)"])
            return jsonData
        }
        
    }
    
}

