//
//  Multimedia.swift
//  NeaKallistiRodopis
//
//  Created by Angelos Staboulis on 12/1/25.
//

import SwiftUI

struct Multimedia: View {
    @State var media = ["Πανηγύρι στην Νέα Καλλίστη","Πάσχα στην Νέα Καλλίστη"]
    var body: some View {
        NavigationStack{
            List(media,id:\.self){item in
                HStack{
                    
                    NavigationLink {
                        if item == "Πανηγύρι στην Νέα Καλλίστη"{
                            MediaView(isPlaying: false)
                        }
                        if item == "Πάσχα στην Νέα Καλλίστη"{
                            MediaViewPasxa(isPlaying: false)
                        }

                    } label: {
                        Text(item).frame(width:600,alignment: .leading)
                    }}
                }
            }.frame(width:900,alignment: .leading)
        }
}

