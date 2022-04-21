//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet let allows me to reference a UI element, change interface
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        
        // Donde escribiremos el codigo
        super.viewDidLoad()
        // Cambiaremos la imagen del dado cuando se cargue la pantalla
        // WHO         WHAT    VALUE
        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
//        #imageLiteral(
        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
        
    }

//          Accion que realiza el boton al ser         pulsado
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
//      Array de imagenes
        let diceArray  = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
//        Also have
//        diceImageView1.image = diceArray[Int.random(in: 0...5)]
//        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }
    
}

