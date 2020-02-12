//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-06.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let textFieldLength:CGFloat = 200
    @State var textFieldText = "" 
    @State var buttonText = ""
    var body: some View {
        
        ZStack {
            Color(red: 0, green: 0.5, blue: 0.5).edgesIgnoringSafeArea(.all)
            VStack {
              //  Spacer().frame(width: 10, height: 0, alignment: .top)
                Image("horseJump").resizable().aspectRatio(contentMode: .fit).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .frame(width: 60, height: 60, alignment: .top)
                
                    
                UnderlineTextField(textField: TextField("place", text: $textFieldText), lineColor: .white).frame(width: textFieldLength, height: 30, alignment: .center)
                
                Spacer().frame(width: 10, height: 30, alignment: .center)

                
                Button(action: {
                    self.buttonText = self.textFieldText
                }) {
                    Text("")
                    
                }.buttonStyle(RoundButtonStyle(radius: 20, text: buttonText))
                .frame(width: 200, height:30, alignment:.center).padding(.all, 20)
               //TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: "")
                Spacer()
            }
            
              
            
        }
        .onAppear {
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
