//
//  FlagRaisingView.swift
//  Fiery Flag Raising V1
//
//  Created by YJ Soon on 6/9/21.
//

import SwiftUI

struct FlagRaisingView: View {
    
    @AppStorage("flagOffset") var offset: Double = 20
    var flagEmoji: String
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .frame(width: 10)
                Text(flagEmoji)
                    .font(.system(size: 100))
                    .offset(y: CGFloat(offset))
            }
            Button("Raise Flag") {
                offset -= 20
            }
            .padding()
            Button("Reset Flag") {
                offset = 20
            }
            .padding()
        }
        
    }
}

struct FlagRaisingView_Previews: PreviewProvider {
    static var previews: some View {
        FlagRaisingView(flagEmoji: "🇸🇬")
    }
}
