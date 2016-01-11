//
//  ingredientesController.swift
//  pizzaCarlos
//
//  Created by Carlos Ramirez Velazquez on 12/16/15.
//  Copyright (c) 2015 Carlos Ramirez Velazquez. All rights reserved.
//

import UIKit

class ingredientesController: UIViewController {
    
    
    var tam : String = " "
    var masa :String = " "
    var queso : String = " "
    var ingredientes = " "
    
    @IBOutlet weak var lblTamano: UILabel!
    
    @IBOutlet weak var lblMasa: UILabel!
    
    @IBOutlet weak var lblQueso: UILabel!
    
    @IBOutlet weak var lblIngredientes: UILabel!
    
    
    @IBOutlet weak var btnConfirm: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnConfirm.enabled = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblTamano.text = tam
        lblMasa.text = masa
        lblQueso.text = queso
    }
    @IBOutlet weak var checkPp: UIImageView!
    @IBOutlet weak var uncheckedPp: UIImageView!
    @IBOutlet weak var checkPavo: UIImageView!
    @IBOutlet weak var uncheckedPavo: UIImageView!
    @IBOutlet weak var checkAceitunas: UIImageView!
    @IBOutlet weak var uncheckedAceitunas: UIImageView!
    @IBOutlet weak var checkedJamon: UIImageView!
    @IBOutlet weak var uncheckedJamon: UIImageView!
    @IBOutlet weak var checkedPina: UIImageView!
    @IBOutlet weak var uncheckedPina: UIImageView!
    @IBOutlet weak var checkSalchicha: UIImageView!
    @IBOutlet weak var uncheckedSalchicha: UIImageView!
    
    @IBAction func btnPepe() {
        if checkPp.hidden == true{
        checkPp.hidden = false
        ingredientes += "Peperoni"
        lblIngredientes.text = ingredientes
        btnConfirm.enabled = true
        }else if checkPp.hidden == false{
            checkPp.hidden = true
            uncheckedPp.hidden = false
        }
        /*if switchPepe.on{
            switchPepe.setOn(false, animated: true)
            ingredientes += "Peperoni"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else{
            switchPepe.setOn(true, animated: false)
        }*/
    }
    @IBAction func btnPavo() {
        if checkPavo.hidden == true{
            checkPavo.hidden = false
            ingredientes += "Pavo"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else if checkPavo.hidden == false{
            checkPavo.hidden = true
            uncheckedPavo.hidden = false
        }
    }
    
    @IBAction func btnAceitu() {
        if checkAceitunas.hidden == true{
            checkAceitunas.hidden = false
            ingredientes += "Aceitunas"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else if checkPp.hidden == false{
            checkAceitunas.hidden = true
            uncheckedAceitunas.hidden = false
        }
    }
    
    @IBAction func btnJam() {
        if checkedJamon.hidden == true{
            checkedJamon.hidden = false
            ingredientes += "Jamón"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else if checkedJamon.hidden == false{
            checkedJamon.hidden = true
            uncheckedJamon.hidden = false
        }
    }
    
    
    @IBAction func btnPina() {
        if checkedPina.hidden == true{
            checkedPina.hidden = false
            ingredientes += "Piña"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else if checkedPina.hidden == false{
            checkedPina.hidden = true
            uncheckedPina.hidden = false
        }
    }
    
    @IBAction func btnSalchi() {
        if checkSalchicha.hidden == true{
            checkSalchicha.hidden = false
            ingredientes += "Salchicha"
            lblIngredientes.text = ingredientes
            btnConfirm.enabled = true
        }else if checkPp.hidden == false{
            checkSalchicha.hidden = true
            uncheckedSalchicha.hidden = false
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let enviarTam = tam
        let enviarMasa = masa
        let enviarQueso = queso
        let enviarIngre = ingredientes
        let vistaConfirmar = segue.destinationViewController as! elegirViewController
        vistaConfirmar.tam = enviarTam
        vistaConfirmar.masa = enviarMasa
        vistaConfirmar.queso = enviarQueso
        vistaConfirmar.ingredientes = enviarIngre
    }
    
    
    /*
    @IBOutlet weak var switchPeperoni: UISwitch!
    
    @IBAction func botonPepero() {
    if switchPeperoni.on{
    switchPeperoni.setOn(false, animated: true)
    // ingredientes.append("jamon")
    ingredientes += "Peperoni"
    labelIngredientes.text = ingredientes
    buttonConfirm.enabled = true
    
    }else{
    switchPeperoni.setOn(true, animated: false)
    }
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
