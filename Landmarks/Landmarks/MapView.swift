//
//  MapView.swift
//  Landmarks
//
//  Created by Karan Sekhri on 7/15/20.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
                    latitude: 34.011286, longitude: -116.166868)
                let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
                let region = MKCoordinateRegion(center: coordinate, span: span)
                uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

/*
 ### Section 5: Use UIKit and SwiftUI Views Together
 * To use UIView subclasses from within SwiftUI, you wrap the other view in a SwiftUI view that conforms to the UIViewRepresentable protocol. (SwiftUI includes similar protocols for WatchKit and AppKit views)
 * To get started, you’ll create a new custom view that can present an MKMapView.
     1. Choose File > New > File, select iOS as the platform, select the SwiftUI View template, and click Next. Name the new file MapView.swift and click Create.
     2. Add an import statement for MapKit, and declare UIViewRepresentable conformance for the MapView type.
 * The UIViewRepresentable protocol has two requirements you need to add:
     1. a makeUIView(context:) method that creates an MKMapView
         * Replace the body property with a makeUIView(context:) method that creates and returns an empty MKMapView.
     2. an updateUIView(_:context:) method that configures the view and responds to any changes
         * Create an updateUIView(_:context:) method that sets the map view’s region to the correct coordinates to center the map on Turtle Rock.
 * When previews are in static mode, they only fully render SwiftUI views. Because MKMapView is a UIView subclass, you’ll need to switch to a live preview to see the map.
     * Click the Live Preview button to switch the preview to live mode. You might need to click the Try Again or Resume button above your preview.
 */
