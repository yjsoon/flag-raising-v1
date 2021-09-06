//
//  ContentView.swift
//  Fiery Flag Raising V1
//
//  Created by YJ Soon on 6/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Flag raising goes here")
                .tabItem {
                    Label("Flag raising", image: "finish")
                }
            Text("Flag chooser goes here")
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
