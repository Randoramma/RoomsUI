//
//  ContentView.swift
//  RoomsUI
//
//  Created by Randy McLain on 7/11/19.
//  Copyright © 2019 Randy McLain. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var rooms: [Room] = []
    
    var body: some View {
        NavigationView {
            List(rooms) { room in
                RoomCell(room: room)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
#endif



struct RoomCell : View {
    
    let room: Room
    var body: some View {
        return NavigationButton(destination: RoomDetail(room: room)) {
            Image(systemName: "photo").cornerRadius(0)
            // Image(room.thumbnailName).cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people").font(.subheadline).foregroundColor(.secondary)
            }
        }
    }
}
