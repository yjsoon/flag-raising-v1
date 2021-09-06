//
//  ContentView.swift
//  Fiery Flag Raising V1
//
//  Created by YJ Soon on 6/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var flag = Flag(emoji: "🇸🇬", description: "Singapore")
    
    var body: some View {
        TabView {
            FlagRaisingView(flagEmoji: flag.emoji)
                .tabItem {
                    Label("Flag raising", image: "finish")
                }
            FlagSelectorView(selectedFlag: $flag)
                .tabItem {
                    Label("Choose flag", systemImage: "square.grid.2x2.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
