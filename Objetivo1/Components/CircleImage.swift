import SwiftUI

struct CircleImage: View {
    var image: String
    
    var body: some View {
        Image(self.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.orange, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: "arcotete")
    }
}
