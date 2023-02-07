//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Ege Aydemir on 7.02.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                //:Action
                print("Information")
            }){
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(.primary)
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            Spacer()
            
            Button(action:{
                //Action
                print("Guide")
            }){
                Image(systemName: "questionmark.circle")
                    .font(.system(size:24, weight: .regular))
            }
            .accentColor(.primary)
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
