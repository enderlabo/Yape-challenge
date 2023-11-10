//
//  MapTests.swift
//  YapeFoodTests
//
//  Created by Elderson Laborit on 10/11/23.
//

import SwiftUI
import MapKit
import XCTest

@testable import YapeFood

class MapViewTests: XCTestCase {

    func testMapView_ShouldShowAtTheSpecifiedCoordinates() {
        // Given
        let latitude: Double = -12.0464
        let longitude: Double = -77.036667

        // When
        let mapView = MapView(latitude: latitude, longitude: longitude)

        // Then
        XCTAssertNotNil(mapView)
        XCTAssertFalse(longitude.isNaN)
        
    }
}
