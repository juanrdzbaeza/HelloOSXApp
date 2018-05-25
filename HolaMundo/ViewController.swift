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
    var name: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        holaTu.stringValue = "Hola Usuario";
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func saludar(sender: NSButton) {
        name = nombre.stringValue;
        holaTu.stringValue = "Hola "+name!;
    }
    @IBAction func reset(sender: NSButton) {
        holaTu.stringValue = "Hola Usuario";
        nombre.stringValue = "";
    }
    

}

