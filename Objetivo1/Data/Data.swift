import Foundation

var users: [Usuario] = []

var user1 = Usuario(username: "emanuel", password: "skyness33_")
var taxcoDos = PuebloMagico(nombre: "Taxco", coordenadas: [18.556_785_950_016_494, -99.605_018_803_733_780], descripcion: "Pueblo bonito", imagen: "taxco", estado: "Guerrero")
var hierve_el_agua = PuebloMagico(nombre: "Hierve el agua", coordenadas: [16.865_750_639_930_102, -96.275_459_329_386_2], descripcion: "Este es un balneario natural que sirve como mirador de los valles centrales y ademas cuenta con aguas cristalinas y templadas y maravillosas cascadas.", imagen: "taxco", estado: "Oaxaca")

var mitla = PuebloMagico(nombre: "Mitla", coordenadas: [16.927_125_584_521_79, -96.358_884_380_135_4], descripcion: "Aqui hay increibles artesanos y es una clara representacion del México prehispanico. Es un sitio arqueologico es reconocido por toda su armonia. Incluso si pasas por la Columna de la vida (cuentan por ahí) sabras cuantos años te quedan de vida.", imagen: "mitla", estado: "Oaxaca")

var tlacolula = PuebloMagico(nombre: "Tlacolula", coordenadas: [16.954_219_066_218_58, -96.474_539_581_063_44], descripcion: "Aqui se brinda una arquitectura magnifica, asi como una vista al pasado de ese lugar.", imagen: "tlacolula", estado: "Oaxaca")

var teotilan_del_valle = PuebloMagico(nombre: "Teotilán del Valle", coordenadas: [17.030_633_962_237_87, -96.522_432_223_033_22], descripcion: "Este fue el primer pueblo creado por los zapotecas. Considerado una zona arqueologica debido a su arquitectura y por las “Piedra de Zapote”", imagen: "taxco", estado: "Oaxaca")

var primer_tour_oax = Tour(nombre: "Primer Oaxaquete", pueblos: [hierve_el_agua, mitla, tlacolula, teotilan_del_valle], precio: 5000, fecha: Date.now)
