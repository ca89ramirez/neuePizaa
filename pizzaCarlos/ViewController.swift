//
//  ViewController.swift
//  pizzaCarlos
//
//  Created by Carlos Ramirez Velazquez on 12/14/15.
//  Copyright (c) 2015 Carlos Ramirez Velazquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sizeChose: UILabel!
    var tamano :String = ""
    var elegido :Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonNext.enabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    @IBOutlet weak var buttonNext: UIButton!

    

    @IBAction func Grande() {
        tamano = "Grande"
        sizeChose.text=tamano
        print(tamano)
        buttonNext.enabled = true
        
    }

    @IBAction func mediana() {
        tamano="Mediana"
        sizeChose.text=tamano
         buttonNext.enabled = true
        
    }
    @IBAction func peque() {
        tamano="Pequeña"
        sizeChose.text=tamano
         buttonNext.enabled = true
    }
    
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tama = tamano
        let siguienteVista = segue.destinationViewController as! masaController
        siguienteVista.tam = tama
    }

    
}

