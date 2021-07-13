//
//  NetworkManager.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import Foundation

struct Endpoints {
    
}

protocol NetworkManagerProtocol: AnyObject {
    func get<T: Codable>(with url: String, completion: ((Result<T, Error>) -> Void))
}

final class NetworkManager: NetworkManagerProtocol {
    func get<T: Codable>(with url: String, completion: ((Result<T, Error>) -> Void)) {
        //let response = URLSession.shared.dataTask(with: <#T##URL#>)
    }
}

