//
//  CardView.swift
//  Honeymoon
//
//  Created by Ege Aydemir on 7.02.2023.
//

import SwiftUI

struct CardView: View, Identifiable {
    // MARK: - Properties
    let id = UUID()
    var honeymoon : Destination
    
    // MARK: - Body
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 24){
                    Text(honeymoon.place.uppercased())
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay(
                        Rectangle()
                            .fill(.white)
                            .frame(height:1),
                        alignment: .bottom
                        )
                
                    
                    Text(honeymoon.country.uppercased())
                        .foregroundColor(.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule().fill(.white)
                        )
                }//:VSTACK
                    .frame(minWidth: 280)
                    .padding(.bottom, 20),
                alignment: .bottom
                
            )
    }
}

// MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(honeymoon: honeymoonData[1])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}
