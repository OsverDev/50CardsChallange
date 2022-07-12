//
//  ContentView.swift
//  50CardsChallange
//
//  Created by Osver Fernandez on 7/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            TabView{
                ForEach(0...49,id: \.self){ index in
                    
                    var col1 = Double.random(in: 0...1)
                    var col2 = Double.random(in: 0...1)
                    var col3 = Double.random(in: 0...1)
                    Rectangle()
                        .foregroundColor(Color.init(.sRGB, red: col1, green: col2, blue: col3, opacity: 1))
                        .overlay(
                    Image(systemName: "\(index+1).circle")
                        .resizable()
                        .scaledToFit())
                }
                    
                
            }.frame(width: UIScreen.main.bounds.width/10*9, height: UIScreen.main.bounds.height/10*8, alignment: .center)
                .cornerRadius(20)
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always)) // Makes tabview a swipable element.
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
