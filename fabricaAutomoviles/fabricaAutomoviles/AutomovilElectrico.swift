//
//  File.swift
//  fabricaAutomoviles
//
//  Created by Pablo Alvarez on 24/04/23.

import Foundation


class AutomovilElectrico: Automovil {
    
    var porcentajeBateria = 100
    
    func cargarBateria() -> String {
        
        porcentajeBateria = 100
        return "carga exisa"
    }
    
    
}
