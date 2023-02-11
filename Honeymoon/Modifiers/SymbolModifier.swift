//
//  SymbolModifier.swift
//  Honeymoon
//
//  Created by Ege Aydemir on 11.02.2023.
//

import SwiftUI

struct SymbolModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 128))
            .shadow(color:Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)), radius: 12, x: 0, y: 0)
    }
}

