//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Ramon Ferreira do Nascimento on 27/12/19.
//  Copyright © 2019 Ramon Ferreira do Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet var felicidadeTextField: UITextField!
    
    @IBAction func adicionar(_ sender: Any) {
        //let nome: String = "churros" < declaração explícita falando que é uma String
        //let felicidade: String = "5" < declaração explícita falando que é uma String
        let nome = nomeTextField.text
        let felicidade = felicidadeTextField.text
        print("comi \(nome) e fiquei com felicidade: \(felicidade)")
    }
}

