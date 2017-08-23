//
//  FavoriteChannel.swift
//  ShikamiC - Assignment6
//
//  Created by Christopher Shikami on 2/27/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import Foundation

var favoriteChannels = [
    
    favoriteChannel(name: "ABC",
                    number: "1"),
    
    favoriteChannel(name: "NBC",
                    number: "2"),
    
    favoriteChannel(name: "CBS",
                    number: "3"),
    
    favoriteChannel(name: "FOX",
                    number: "4")
        ]

class favoriteChannel {
    
    var name: String
    var number: String
    
    init(name: String, number: String) {
        self.name = name
        self.number = number
    }
}
