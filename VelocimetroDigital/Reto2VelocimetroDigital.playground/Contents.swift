//: Playground - noun: a place where people can play

import UIKit




import UIKit


/*var apagado : Int = 0 // representa la velocidad 0.
var velocidadBaja : Int = 20 // representa una velocidad de 20km por hora.
var velocidadMedia : Int = 50 // representa una velocidad de 50km por hora
var velocidadAlta : Int = 120 // representa una velocidad de 50km por hora.
var velocidadInicial : Int // representa la velocidad inicial*/

//let velo = ["apagado", "velocidadBaja", "velocidadMedia", "velocidadAlta"]

enum Velocidades : Int { // definicion de la enumeracion
    
    case apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    //case velocidadInicial
    
    init (velocidadInicial : Velocidades){ // inicializadora de la enumeracion
        //self = .apagado
        self = velocidadInicial
        
    }
}

class Auto {
    var velocidad : Velocidades // intancia de la enumeracion Velocidades
    
    init(){
        self.velocidad = Velocidades.apagado // inicializador de la clase
        
    }
    
    var velocidadParaMensaje = 0
    var mensaje = ""
    
    func cambioDeVelocidad () ->(actual : Int, velocidadEnCadena : String){
        
        if velocidad.rawValue == 0{
          
            velocidad
            velocidadParaMensaje
            mensaje = "Apagado"
            
            velocidadParaMensaje = velocidad.rawValue
            velocidadParaMensaje
            mensaje = "Apagado"
            velocidad = .velocidadBaja
            velocidad

        }else if velocidad.rawValue == 20 {
            
            mensaje = "Velocidad Baja"
            velocidadParaMensaje = velocidad.rawValue
            velocidad = .velocidadMedia
            
        }else if velocidad.rawValue == 50{
            velocidadParaMensaje = velocidad.rawValue
            mensaje = "Velocidad Media"
            velocidad = .velocidadAlta
            
        }else if velocidad.rawValue == 120{
            velocidadParaMensaje = velocidad.rawValue
            mensaje = "Velocidad Alta"
            velocidad = .velocidadMedia
            
        }
        
        let mensajeFinal = (velocidadParaMensaje, mensaje)
        
        return mensajeFinal
        
        
    }
}

var auto = Auto()

for i in 1 ... 20{
    
    print("Ciclo >>> \(i)")
    print(auto.cambioDeVelocidad())
    
}







