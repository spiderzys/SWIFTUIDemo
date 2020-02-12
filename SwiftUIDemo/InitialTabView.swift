//
//  TabView.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-10.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import SwiftUI


struct InitialTabView: View {
    var body: some View {
        TabView {
            ContentView().tabItem {
                Text("1")
            }
            NewsListView().tabItem {
                           Text("2")
                       }
        }
    }
}


