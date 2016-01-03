//Velocímetro

import UIKit


enum Velocidades : Int
{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init ()
    {
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String)
    {
        switch velocidad
        {
        case .Apagado:
            velocidad = .VelocidadBaja
            return (Velocidades.VelocidadBaja.rawValue, "Velocidad Baja")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (Velocidades.VelocidadMedia.rawValue, "Velocidad Media")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (Velocidades.VelocidadAlta.rawValue, "Velocidad Alta")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (Velocidades.VelocidadMedia.rawValue, "Velocidad Media")        }
    }
}


var auto = Auto()

for var i:Int=1; i<=20; i++
{
    var retorno : (actual: Int, velocidadEnCadena: String)
    retorno = auto.cambioDeVelocidad()
    print("\(i). \(retorno.actual), \(retorno.velocidadEnCadena)")
}
