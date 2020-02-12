//
//  NewsListViewModel.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-11.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import Foundation

class NewsListViewModel: ObservableObject {
    @Published var newsList:[ListedNews] = []
    
    func fetchNewsList() {
        APINetworking.sharedInstance.fetchNewsList { (list) in
            DispatchQueue.main.async {
                self.newsList = list.hits
            }
            
        }
        
    }
}
