//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Ege Aydemir on 7.02.2023.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    
    @Binding var showGuideView: Bool
    @Binding var showInfoView:Bool
    
    var body: some View {
        HStack {
            Button(action: {
                //:Action
//                print("Information")
                self.showInfoView.toggle()
            }){
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(.primary)
            .sheet(isPresented: $showInfoView){
                InfoView()
            }
            
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            Spacer()
            
            Button(action:{
                //Action
//                print("Guide")
                self.showGuideView.toggle()
            }){
                Image(systemName: "questionmark.circle")
                    .font(.system(size:24, weight: .regular))
            }
            .accentColor(.primary)
            .sheet(isPresented: $showGuideView){
                GuideView()
            }
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
