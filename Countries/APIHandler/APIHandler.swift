//
//  APIHandler.swift
//  Countries
//
//  Created by Artun Erol on 26.11.2021.
//

import UIKit

class APIHandler {

    let headers = [
        "x-rapidapi-host": "wft-geo-db.p.rapidapi.com",
        "x-rapidapi-key": "0f011425e5msh0080da57ecd569fp1833e9jsn91ca6c2fadac"
    ]
    
    ///Function That Makes URLRequest and brings back Data.
    public static func urlRequest() {
        let countriesURLString = "https://wft-geo-db.p.rapidapi.com/v1/geo/countries"
        guard let countriesURL = URL(string: countriesURLString) else { return }
        var request = URLRequest(url: countriesURL)
        
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request) { data, urlResponse, error in
            
        }
        dataTask.resume()
    }
    
}
