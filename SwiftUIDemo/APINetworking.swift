//
//  APINetworking.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-11.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import Foundation
import Alamofire

class APINetworking {
    static let sharedInstance = APINetworking()
    func fetchNewsList(completion: ((ListedNewsResult) -> Void)? ) {
        Alamofire.request("http://hn.algolia.com/api/v1/search?tags=front_page").responseJSON { (response) in
            
            if let data = response.data {
                let decoder = JSONDecoder()
                if let result = try? decoder.decode(ListedNewsResult.self, from: data) {
                    completion?(result)
                }
            }
        }
    }
}
