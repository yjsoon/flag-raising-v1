//
//  FlagSelectorView.swift
//  Fiery Flag Raising V1
//
//  Created by YJ Soon on 6/9/21.
//

import SwiftUI

struct FlagSelectorView: View {
    
    var flags: [Flag] {
        let flagDataURL = Bundle.main.url(forResource: "FlagData", withExtension: "json")!
        let decoder = JSONDecoder()
        let data = try! Data(contentsOf: flagDataURL)
        
        return try! decoder.decode([Flag].self, from: data)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    
                    ForEach(flags) { flag in
                        VStack {
                            Text(flag.emoji)
                                .font(.system(size: 50))
                            Text(flag.description)
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        }.padding()
                    }
                    
                }
            }
            .navigationTitle("Choose yo' flag")
        }
    }
}

struct FlagSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        FlagSelectorView()
    }
}
