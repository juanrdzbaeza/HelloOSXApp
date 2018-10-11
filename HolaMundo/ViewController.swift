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
    @IBOutlet weak var copyright: NSTextField!
    
    @IBOutlet weak var imgAvatar: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dictionary = NSBundle.mainBundle().infoDictionary!
        imgAvatar.image = NSImage(named: "defaultImage");
        holaTu.stringValue = "Hola Mundo";
        
        copyright.stringValue = dictionary["NSHumanReadableCopyright"] as! String
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func saludar(sender: NSButton) {
        if (nombre.stringValue == "") {
            holaTu.stringValue = "¡Hola vergonzoso picaruelo!";
            imgAvatar.image = NSImage(named: "picaroImage");
        }else{
            holaTu.stringValue = "Que pasa "+nombre.stringValue+"?";
            imgAvatar.image = NSImage(named: "highFive");
        }
    }
    
    @IBAction func retirarSaludo(sender: AnyObject) {
        if holaTu.stringValue.containsString("vergonzoso")  {
            holaTu.stringValue = "Adio zaborio";
            imgAvatar.image = NSImage(named: "angryIcon");
        }else{
            holaTu.stringValue = "Hasta luego salao";
            imgAvatar.image = NSImage(named: "happyIcon");
        }
        nombre.stringValue = "";

    }
    

}

