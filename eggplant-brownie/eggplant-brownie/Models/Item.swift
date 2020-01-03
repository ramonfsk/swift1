//
//  Item.swift
//  eggplant-brownie
//
//  Created by Ramon Ferreira do Nascimento on 29/12/19.
//  Copyright © 2019 Ramon Ferreira do Nascimento. All rights reserved.
//

import UIKit

class Item: NSObject {
    //MARK: Atributos
    let nome: String
    let calorias: Double
    //MARK: Construtor
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
