//
//  ContentView.swift
//  NeaKallistiRodopis
//
//  Created by Angelos Staboulis on 12/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image("home")
                    Text("Αρχική")
                }
            NeaKallisti(index: 0)
                .tabItem {
                    Image("folder")
                    Text("Νέα Καλλίστη")
                }
            MapView()
                .tabItem {
                    Image("map")
                    Text("Χάρτης")
                }
            GalleryView(index: 0)
                .tabItem {
                    Image("gallery")
                    Text("Φωτογραφίες")
                }
            Multimedia()
                .tabItem {
                    Image("media")
                    Text("Πολυμέσα")
                }
        }
    }
}

#Preview {
    ContentView()
}
