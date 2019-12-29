//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Ramon Ferreira do Nascimento on 29/12/19.
//  Copyright © 2019 Ramon Ferreira do Nascimento. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
    //MARK: Atributos
    let nome: String
    let felicidade: Int
    let itens: Array<Item> = []
    
    //MARK: Construtor
    init(_ nome: String, _ felicidade: Int) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    //MARK: Métodos
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in self.itens {
            total += item.calorias
        }
        
        return total
    }
}
