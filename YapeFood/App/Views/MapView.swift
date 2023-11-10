//
//  MapView.swift
//  YapeFood
//
//  Created by Elderson Laborit on 8/11/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var latitude:Double
    var longitude:Double
    var coordinate:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: StaticTexts.Numbers.latLima, longitude: StaticTexts.Numbers.logLima)

    var body: some View {
        Map {
            Marker(StaticTexts.titleMarkMap,
                   systemImage: StaticTexts.Image.mappinIcon, coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))
            .tint(.purple)
        }
    }
}

#Preview {
    MapView(latitude: StaticTexts.Numbers.int0, longitude: StaticTexts.Numbers.int0)
}
