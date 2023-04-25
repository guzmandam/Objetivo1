import Foundation

struct PuebloMagico {
    var nombre: String
    var coordenadas: [CGFloat]
    var descripcion: String
    var imagen: String
    var estado: String
}

struct Tour {
    var nombre: String
    var pueblos: [PuebloMagico]
    var precio: Float
    var dias: Int
    var fecha: Date
}

struct Usuario {
    var username: String
    var password: String
}

struct PueblosParaTour {
    var pueblos: [PuebloMagico]
}

struct Estado {
    var nombre: String
    var lema: String
    var imagen: String
}
