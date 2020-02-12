//
//  WebView.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-12.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import SwiftUI
import WebKit
struct WebView: UIViewRepresentable {
    let url:String?
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let url = URL(string: self.url ?? "") {
            uiView.load(URLRequest(url: url))
        }
    }
    
    
    
}

