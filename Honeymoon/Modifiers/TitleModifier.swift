//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Ege Aydemir on 9.02.2023.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}


