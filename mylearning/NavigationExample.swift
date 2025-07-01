//
//  NavigationExample.swift
//  mylearning
//
//  Created by Vidhyapathi on 23/06/25.
//

import SwiftUI
import AVKit

struct NavigationExample: View {
    let player = AVPlayer(url: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
    var body: some View {
        VideoPlayer(player: player)
            .onAppear {
                player.play()
            }
    }
}

#Preview {
    NavigationExample()
}
