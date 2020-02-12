//
//  UnderlineTextField.swift
//  SwiftUIDemo
//
//  Created by Yangsheng Zou on 2020-02-09.
//  Copyright © 2020 Yangsheng. All rights reserved.
//

import SwiftUI

struct UnderlineTextField: View {
    let textField: TextField<Text>
    let lineColor: Color
    var body: some View {
        VStack {
            textField
            Divider().background(lineColor)
            
        }
    }
        
        
    
}
struct UnderlineTextField_Previews: PreviewProvider {
    static var previews: some View {
        UnderlineTextField(textField: TextField("placeHolder", text: .constant("22")), lineColor: .white)
    }
}
