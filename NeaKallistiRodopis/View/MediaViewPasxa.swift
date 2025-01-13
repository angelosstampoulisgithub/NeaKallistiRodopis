//
//  MediaViewPasxa.swift
//  NeaKallistiRodopis
//
//  Created by Angelos Staboulis on 12/1/25.
//

import SwiftUI
import AVKit
struct MediaViewPasxa: View {
    @State var player = AVPlayer(url: URL(filePath:Bundle.main.path(forResource: "Pasxa", ofType: "mp4")!))
    @State var isPlaying:Bool
    var body: some View {
        NavigationStack{
            VideoPlayer(player: player).frame(width:800,height: 800)
            HStack{
                Button {
                    player.play()
                } label: {
                    Text( "Play")
                }
                Button {
                    player.pause()
                } label: {
                    Text( "Pause")
                }
                NavigationLink {
                    Multimedia()
                } label: {
                    Text("Back")
                }
            }

        }
    }
}

