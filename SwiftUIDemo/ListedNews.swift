//
//  File.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-11.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import Foundation

struct ListedNews: Identifiable, Decodable {
    var id:String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
}



struct ListedNewsResult: Decodable {
    let hits: [ListedNews]
}
