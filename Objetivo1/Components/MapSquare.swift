import SwiftUI
import MapKit

struct MapSquare: View {
    var coordinates: [CGFloat]
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        Map(coordinateRegion: $region).onAppear {
            region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: coordinates[0], longitude: coordinates[1]),
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))

        }
    }
}

struct MapSquare_Previews: PreviewProvider {
    static var previews: some View {
        MapSquare(coordinates: taxco.coordenadas)
    }
}
