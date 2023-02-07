//
//  ContentView.swift
//  Honeymoon
//
//  Created by Ege Aydemir on 10.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            CardView(honeymoon: honeymoonData[0])
                //Add padding to the cards later on
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
