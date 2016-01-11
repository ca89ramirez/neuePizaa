//
//  elegirViewController.swift
//  pizzaCarlos
//
//  Created by Carlos Ramirez Velazquez on 12/14/15.
//  Copyright (c) 2015 Carlos Ramirez Velazquez. All rights reserved.
//

import UIKit

class elegirViewController: UIViewController {

    var tam:String = " "
    var masa:String = " "
    var queso:String = " "
    //var ingredientes:[String?]=[" "]
    var ingredientes = " "
    
    
    @IBOutlet weak var lblTam: UILabel!
    
    @IBOutlet weak var lblMasa: UILabel!
    
    @IBOutlet weak var lblQueso: UILabel!
    
    @IBOutlet weak var lblIngre: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       // eligeIngredientes?.enabled = false
      //  buttonConfirm?.enabled = false
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        lblTam.text = tam
        lblMasa.text = masa
        lblQueso.text = queso
        lblIngre.text = ingredientes
    }
    
    
    @IBAction func btnCancelar() {
        lblTam.text = " "
        lblMasa.text = " "
        lblQueso.text = " "
        lblIngre.text = " "
        
        
    
    }
    
    
     /*s
    @IBOutlet weak var elegirQueso: UIButton!
   
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
    */
    
    
    
   
    
  /*  @IBOutlet weak var miSwitch: UISwitch!
   
    @IBAction func botonJamon() {
        if miSwitch.on{
            miSwitch.setOn(false, animated: true)
           // ingredientes.append("jamon")
            ingredientes += "Jamon"
            labelIngredientes.text = ingredientes
            
        }else{
            miSwitch.setOn(true, animated: false)
        }
    }*/
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
