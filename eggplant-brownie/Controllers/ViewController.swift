//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Ramon Ferreira do Nascimento on 27/12/19.
//  Copyright © 2019 Ramon Ferreira do Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        //let nome: String = "churros" < declaração explícita falando que é uma String
        //let felicidade: String = "5" < declaração explícita falando que é uma String
        
//        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text {
//            let nome = nomeDaRefeicao
//            if let felicidade = Int(felicidadeDaRefeicao) {
//                let refeicao = Refeicao(nome, felicidade)
//
//                print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
//            } else {
//                print("erro ao tentar criar refeição")
//            }
//        }
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nomeDaRefeicao, felicidade)
        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
    }
}

