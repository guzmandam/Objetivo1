import SwiftUI

struct PuebloView: View {
    var pueblo: PuebloMagico
    var body: some View {
        VStack {
            MapSquare(coordinates: pueblo.coordenadas)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: self.pueblo.imagen)
                .offset(y: -130)
                .padding(.bottom, -130)

            PuebloTitle(name: self.pueblo.nombre, description: self.pueblo.descripcion, state: self.pueblo.estado)

            Spacer()
        }
    }
}

struct PuebloView_Previews: PreviewProvider {
    static var previews: some View {
        PuebloView(pueblo: tlacolula)
    }
}
