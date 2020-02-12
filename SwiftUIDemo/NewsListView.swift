//
//  NewsListView.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-11.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import SwiftUI

struct NewsListView: View {
    @ObservedObject var viewModel = NewsListViewModel()
    var body: some View {
        viewModel.fetchNewsList()
        return  NavigationView {
        
            List(viewModel.newsList) { news in
                NavigationLink(destination: NewsDetailView(url:news.url)) {
                    Text(news.title)
                }
                
            }
            .navigationBarTitle("News")
            
        }
        .onAppear {
            print("appear")
        }
        
    }
}


struct NewsListView_Preview: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
