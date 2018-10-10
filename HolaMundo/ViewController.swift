//
//  ViewController.swift
//  HolaMundo
//
//  Created by Juan Rodríguez Baeza on 9/5/18.
//  Copyright © 2018 Juan Rodríguez Baeza. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var nombre: NSTextField!
    @IBOutlet weak var holaTu: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        holaTu.stringValue = "Hola Mundo";
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func saludar(sender: NSButton) {
        if (nombre.stringValue == "") {
            holaTu.stringValue = "¡Hola vergonzoso picaruelo!";
        }else{
            holaTu.stringValue = "Hola "+nombre.stringValue;
        }
    }
    
    @IBAction func retirarSaludo(sender: AnyObject) {
        if holaTu.stringValue.containsString("vergonzoso")  {
            holaTu.stringValue = "Adio zaborio";
        }else{
            holaTu.stringValue = "Hasta luego salao";
        }
        nombre.stringValue = "";

    }
    

}

