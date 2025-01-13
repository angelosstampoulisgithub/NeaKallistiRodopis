//
//  MapView.swift
//  NeaKallistiRodopis
//
//  Created by Angelos Staboulis on 12/1/25.
//

import SwiftUI
import MapKit
struct MapView: View {
    var body: some View {
        Map{
            Marker(coordinate: CLLocationCoordinate2D(latitude:41.036831, longitude:25.212219)) {
                Text("Νέα Καλλίστη,Ροδόπης")
            }
        }
    }
}

#Preview {
    MapView()
}
