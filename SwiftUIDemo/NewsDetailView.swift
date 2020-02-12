//
//  NewsDetailView.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-12.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import SwiftUI

struct NewsDetailView: View {
    let url: String?
    var body: some View {
        WebView(url: url)
        
    }
}
