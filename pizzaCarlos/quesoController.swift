//
//  quesoController.swift
//  pizzaCarlos
//
//  Created by Carlos Ramirez Velazquez on 12/16/15.
//  Copyright (c) 2015 Carlos Ramirez Velazquez. All rights reserved.
//

import UIKit

class quesoController: UIViewController {

    var queso:String = " "
    var tam : String = " "
    var masa : String = " "
    /*
    @IBOutlet weak var lblMasa: UILabel!
    
    @IBOutlet weak var lblTamano: UILabel!
    */
    
    @IBOutlet weak var lblTamano: UILabel!
    
    @IBOutlet weak var lblMasa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        botonIngredientes.enabled = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        lblTamano.text = tam
        lblMasa.text = masa
    }
    
    @IBOutlet weak var botonIngredientes: UIButton!
    @IBOutlet weak var labelElecionQueso: UILabel!
    @IBAction func botonMoza(sender: AnyObject) {
        queso = "Mozzarella"
        labelElecionQueso.text=queso
        print(queso)
        botonIngredientes.enabled = true
    }

    @IBAction func botonParma() {
        queso = "Parmesano"
        labelElecionQueso.text=queso
        print(queso)
        botonIngredientes.enabled = true
    }
    
    
    @IBAction func botonCheda() {
        queso = "Cheddar"
        labelElecionQueso.text=queso
        print(queso)
        botonIngredientes.enabled = true
    }
    @IBAction func botonSinQueso() {
        queso = "Sin queso"
        labelElecionQueso.text=queso
        print(queso)
        botonIngredientes.enabled = true
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let enviarTamano = tam
        let enviarMasa = masa
        let enviarQueso = queso
        let vistaFinal = segue.destinationViewController as! ingredientesController
        vistaFinal.queso = queso
        vistaFinal.tam = tam
        vistaFinal.masa = masa
    }
    
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let enviarMasa = masa
    let vistaFinal = segue.destinationViewController as! elegirViewController
    vistaFinal.masa = enviarMasa
    }
    @IBOutlet weak var eligeIngredientes: UIButton!
    
    @IBAction func quesoMozz() {
    queso = "Mozzarella"
    labelQueso.text=queso
    print(queso)
    eligeIngredientes.enabled = true
    
    }
    @IBAction func quesoChe() {
    queso = "Cheddar"
    labelQueso.text=queso
    eligeIngredientes.enabled = true
    }
    
    @IBAction func quesoParme() {
    queso = "Parmesano"
    labelQueso.text=queso
    eligeIngredientes.enabled = true
    }
    
    @IBAction func quesoSin() {
    queso = "Sin queso"
    labelQueso.text=queso
    eligeIngredientes.enabled = true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
