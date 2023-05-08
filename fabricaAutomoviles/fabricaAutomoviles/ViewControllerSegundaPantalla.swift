//
//  ViewControllerSegundaPantalla.swift
//  fabricaAutomoviles
//
//  Created by Pablo Alvarez on 24/04/23.

import UIKit

class ViewControllerSegundaPantalla: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var tipoAutomovil:Int?
    //Opcion buena y recomendable para inicializar sin empaquetar.
    var automovilNormal = Automovil()
    //Opcion que ivan no le gusta, que es desempaquetando forzosamente pudiendo causar error por nulo.
    var autoElectrico:AutomovilElectrico?
    
    var estadoAutomovil = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch tipoAutomovil! {
            
        case 0:
            automovilNormal = Automovil()
            imageView.image = UIImage(named: "automovil")
            label.text = "Se creo el auto normal correctamente"
            
        case 1:
            
            autoElectrico = AutomovilElectrico()
            
            autoElectrico!.color = "Rojo"
            autoElectrico!.precio = 30000
            
            imageView.image = UIImage(named: "autoelectrico")
            label.text = "El auto electrico está listo para arrancar"
            
        default:
            print("Error")
            
        }
    }
    
    @IBAction func mostrarInformacion(_ sender: Any) {
        
        
        switch tipoAutomovil! {
            
        case 0:
            
            label.text = """
                           El automovil tiene \(automovilNormal.numeroLlantas) llantas,
                            es de color \(automovilNormal.color)
                            y su precio es de \(automovilNormal.precio) €
                      """
            
        case 1:
            
            
            label.text = """
                            El automovil tiene \(autoElectrico!.numeroLlantas) llantas,\
                             es de color \(autoElectrico!.color),\
                             su precio es de \(autoElectrico!.precio) €\
                            y su carga está al \(autoElectrico!.porcentajeBateria) de bateria
                          """
            
        default:
            print("Error")
            
        }
        
        
        
    }
    
    @IBAction func encender(_ sender: Any) {
        
        
        switch tipoAutomovil! {
            
        case 0:
            if(!estadoAutomovil){
                estadoAutomovil = automovilNormal.encender()
                label.text = "El automovil encendio correctamente"
            }else{
                label.text = "El automovil ya esta encendido"
            }
        case 1:
            if(!estadoAutomovil){
                estadoAutomovil = autoElectrico!.encender()
                label.text = "El automovil encendio correctamente"
                autoElectrico!.porcentajeBateria = 75
            }else{
                label.text = "El automovil ya esta encendido"
            }
        default:
            print("Error")
            
        }
        
    }
    
    @IBAction func apagar(_ sender: Any) {
        
        
        switch tipoAutomovil! {
            
        case 0:
            if(estadoAutomovil){
                estadoAutomovil = automovilNormal.apagar()
                label.text = "El automovil se apago correctamente"
            }else{
                label.text = "El automovil ya esta apagado"
            }
        case 1:
            if(estadoAutomovil){
                estadoAutomovil = autoElectrico!.apagar()
                label.text = "El automovil se apago correctamente"
            }else{
                label.text = "El automovil electrico ya esta apagado"
            }
        default:
            print("Error")
            
        }
        
    }
    
    @IBAction func acelerar(_ sender: Any) {
        
        
        switch tipoAutomovil! {
        case 0:
            if(estadoAutomovil){
                label.text = automovilNormal.acelerar()
            }else{
                label.text = "El automovil tiene que estar encendido para poder acelerar"
            }
        case 1:
            if(estadoAutomovil){
                label.text = autoElectrico!.acelerar()
                autoElectrico!.porcentajeBateria = autoElectrico!.porcentajeBateria - 10
            }else{
                label.text = "El automovil electrico tiene que estar encendido para poder acelerar"
            }
        default:
            print("Error")
            
        }
        
        
    }
    
}
