//
//  RoundButton.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-09.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import SwiftUI

struct RoundButtonStyle: ButtonStyle {
    let radius:CGFloat
    let text:String
    public func makeBody(configuration: Self.Configuration) -> some View {
        RoundedRectangle(cornerRadius: radius).fill(configuration.isPressed ? Color.white : Color.blue).overlay(Text(text).foregroundColor(configuration.isPressed ? Color.blue : Color.white), alignment: .center)
        
        
    }
    
}




