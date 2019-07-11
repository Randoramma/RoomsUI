//
//  Room.swift
//  RoomsUI
//
//  Created by Randy McLain on 7/11/19.
//  Copyright © 2019 Randy McLain. All rights reserved.
//

import SwiftUI

struct Room : Identifiable { // Must make identifiable to use with swiftUI
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool
    var imageName: String {return name}
    var thumbnailName: String {return name + "thumb"}
}

#if DEBUG
let testData = [
    Room( name: "Observation Deck", capacity: 6, hasVideo: true),
    Room( name: "Executive Suite", capacity: 8, hasVideo: false),
    Room( name: "Charter Jet", capacity: 16, hasVideo: true),
    Room( name: "Dungeon", capacity: 10, hasVideo: true),
    Room( name: "Panaroma", capacity: 12, hasVideo: false),
    Room( name: "Ocean Front", capacity: 8, hasVideo: false),
    Room( name: "Rainbow Room", capacity: 10, hasVideo: true),
    Room( name: "Pastoral", capacity: 7, hasVideo: false),
    Room( name: "Elephant Room", capacity: 1, hasVideo: false)
]
#endif
