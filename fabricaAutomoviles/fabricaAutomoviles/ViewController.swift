//
//  ViewController.swift
//  fabricaAutomoviles
//
//  Created by Pablo Alvarez on 24/04/23.

import UIKit

class ViewController: UIViewController {
    
    var tipoAutomovil:Int?
    var x = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func crearAutomovil(_ sender: Any) {
        
        tipoAutomovil = 0
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    @IBAction func crearAutomovilMazda(_ sender: Any) {
        
        tipoAutomovil = 1
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destino = segue.destination as?
            
            ViewControllerSegundaPantalla{
            destino.tipoAutomovil = self.tipoAutomovil
            
        }
        
    }
    
    
}

