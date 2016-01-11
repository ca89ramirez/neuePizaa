//
//  masaController.swift
//  pizzaCarlos
//
//  Created by Carlos Ramirez Velazquez on 12/16/15.
//  Copyright (c) 2015 Carlos Ramirez Velazquez. All rights reserved.
//

import UIKit

class masaController: UIViewController {

    var masa:String = " "
    var tam: String = " "
    
    @IBOutlet weak var lblTamano: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        botonElegirQueso.enabled = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func  viewWillAppear(animated: Bool) {
        lblTamano.text = tam
        
        
    }
    
    
    @IBOutlet weak var SeleccionMasa: UILabel!
    
    @IBOutlet weak var botonElegirQueso: UIButton!
    
    /*
    @IBOutlet weak var SeleccionMasa: UILabel!
    
    @IBOutlet weak var botonElegirQueso: UILabel!
    */
    @IBAction func botonGruesa() {
        masa="Gruesa"
        SeleccionMasa.text=masa
        print(masa)
        botonElegirQueso.enabled = true
    }

    @IBAction func botonCrujiente() {
        masa="Crujiente"
        SeleccionMasa.text=masa
        print(masa)
        botonElegirQueso.enabled = true
    }
    
    @IBAction func botonDelgada() {
        masa="Delgada"
        SeleccionMasa.text=masa
        print(masa)
        botonElegirQueso.enabled = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let enviarMasa = masa
        let enviarTam = tam
        let vistaFinal = segue.destinationViewController as! quesoController
        vistaFinal.masa = enviarMasa
        vistaFinal.tam = enviarTam
        
    }
    /*
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let tama = tamano
    let siguienteVista = segue.destinationViewController as! elegirViewController
    siguienteVista.tam = tamano
    }
    @IBAction func pastaGruesa() {
    masa="Gruesa"
    labelMasa.text=masa
    print(masa)
    elegirQueso.enabled = true
    
    }
    
    @IBAction func pastacruji() {
    masa = "Crujiente"
    labelMasa.text=masa
    elegirQueso.enabled = true
    }
    
    @IBAction func pastaDelgada() {
    masa = "Delgada"
    labelMasa.text=masa
    elegirQueso.enabled = true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
