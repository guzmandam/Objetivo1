import SwiftUI
struct NosotrosView: View {
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("Nosotros")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                        .bold()
                        .foregroundColor(.orange)
                }
                Text("Debido al incremento en los niveles de pobreza que existe en nuestro pais, vemos la necesidad de incentivarla riqueza cultural que en muchas ocasiones es invisibilizada por los grandes destinos turisticos.")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/130.0/*@END_MENU_TOKEN@*/)
                
                Text("Misión")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.orange)
                    .bold()
                Form {
                    Text("Tenemos el compromiso de hacer emerger aquellos lugares con riqueza cultural, para que sus pobladores mejoren su economia y revivan su hogar")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .frame(width: 300.0, height: 120.0)
                }
                .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
                .cornerRadius(30)
                
                Text("Visión")
                    .font(.title)
                    .foregroundColor(Color.orange)
                    .bold()
                Form {
                    Text("Seremos colaboradores de los poblados que han sido olvidados para reconocerlos como un identificador de la riqueza cultural del país, así como en el turísmo.")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .frame(width: 300.0, height: 120.0)
                }
                .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
                .cornerRadius(30)
                    
            }
            
            
        }
    }
}
struct NosotrosView_Previews: PreviewProvider {
    static var previews: some View {
        NosotrosView()
    }
}
