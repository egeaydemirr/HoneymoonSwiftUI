//
//  ContentView.swift
//  Honeymoon
//
//  Created by Ege Aydemir on 10.01.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    // MARK: - CardViews
    var cardViews: [CardView] = {
        var views = [CardView]()
        for honeymoon in honeymoonData {
            views.append(CardView(honeymoon: honeymoon))
        }
        return views
    }()
    
    var body: some View {
        VStack {
            // MARK: - Header
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            Spacer()
            // MARK: - Card
            ZStack{
                ForEach(cardViews) {cardView in cardView
                    
                }
            }
            .padding(.horizontal)
            
            
            Spacer()
            // MARK: - Footer
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert){
            Alert(title: Text("SUCCESS"),
            message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
            dismissButton: .default(Text("Happy Honeymoon!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
