//
//  RoomDetail.swift
//  RoomsUI
//
//  Created by Randy McLain on 7/11/19.
//  Copyright © 2019 Randy McLain. All rights reserved.
//

import SwiftUI

struct RoomDetail : View {
    let room: Room

    var body: some View {
        Image(room.imageName).resizable().aspectRatio(contentMode: .fit)
    }
}

#if DEBUG
struct RoomDetail_Previews : PreviewProvider {
    static var previews: some View {
        RoomDetail(room: testData[0])
    }
}
#endif
