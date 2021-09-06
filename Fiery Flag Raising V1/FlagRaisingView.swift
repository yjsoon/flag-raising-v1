//
//  FlagRaisingView.swift
//  Fiery Flag Raising V1
//
//  Created by YJ Soon on 6/9/21.
//

import SwiftUI

struct FlagRaisingView: View {
    
    @State var offset: CGFloat = 20
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .frame(width: 10)
                Text("🇸🇬")
                    .font(.system(size: 100))
                    .offset(y: offset)
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
        FlagRaisingView()
    }
}
