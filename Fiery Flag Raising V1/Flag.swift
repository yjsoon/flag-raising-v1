//
//  Flag.swift
//  Fiery Flag Raising V1
//
//  Created by YJ Soon on 6/9/21.
//

import Foundation

struct Flag: Identifiable, Decodable, Equatable {
    
    var id: String {
        emoji
    }
    
    var emoji: String
    var description: String
    
}
