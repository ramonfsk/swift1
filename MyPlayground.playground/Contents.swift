import UIKit

//Este é o código principal do nosso projeto

/*
 teste de comentário
 */

let nome = "churros"
let felicidade = 5
let calorias: Double = 79.5
let vegetal: Bool = false

//func alimentoComsumido() {
//    print("o alimento consumido foi: \(nome)")
//}
//
//alimentoComsumido()
//alimentoComsumido()

func alimentoComsumido(_ nome: String, _ caloria: Double) {
    print("O alimento consumido foi: \(nome), com calorias: \(caloria)")
}

//alimentoComsumido(nome: nome, caloria: calorias)
//alimentoComsumido(nome, calorias)

let caloria1 = 50.5
let caloria2 = 100
let caloria3 = 300
let caloria4 = 500

let totalDeCalorias = [50.5, 100, 300, 500, 450, 700]
//print(totalDeCalorias)

//for i in 0...3 {
//    print(i)
//    print(totalDeCalorias[i])
//}

//for i in 0...totalDeCalorias.count-1 {
//    print(i)
//    print(totalDeCalorias[i])
//}

//for caloria in totalDeCalorias {
//    print(caloria)
//}

//func todasCalorias(_ totalDeCalorias: Array<Double>) {
//    var total = 0.0
//
//    for caloria in totalDeCalorias {
//        total += caloria
//    }
//}

func todasCalorias(_ totalDeCalorias: [Double]) -> Double{
    var total = 0.0
    
    for caloria in totalDeCalorias {
        total += caloria
    }
    
    return total
}

let total = todasCalorias([50.5, 100, 400])
//print(total)

var notas = [9, 6.5, 4, 8.25]
var soma = 0.0
for nota in notas {
  soma += nota
}
//print(soma/Double(notas.count))

//Primeira refeição
//let nome: String = "Macarrão"
//let felicidade: String = "5"

//Segunda refeição
let nome2: String = "Churros"
let felicidade2: String = "4"

//Criar uma classe que agrupe essas características
//class RefeicaoErrado {
//    let nomeE: String = "Macarrão"
//    let felicidadeE: String = "5"
//}
//
////Instaciando uma classe
//let refeicaoE: RefeicaoErrado = Refeicao()
//print(refeicaoE.nomeE)

//Criar uma classe
//class Refeicao1 {
//    var nome: String?
//    var felicidade: String?
//}
//
////Instaciando a classe
//let refeicao1 = Refeicao1()
//refeicao.nome = "Macarrão"
//
////Cuidado => forced unwrap
//print(refeicao1.nome!)
//
//if refeicao1.nome != nil {
//    print(refeicao1.nome)
//}
//
////Boas práticas para extrair valores opcionais:
//if let nome = refeicao1.nome {
//    print(nome)
//}
//
//func exibeNomeDaRefeicao() {
//    if let nome = refeicao1.nome {
//        print(nome)
//    }
//
//    guard let nome = refeicao1.nome else {
//        // ???
//        return
//    }
//}
//
//exibeNomeDaRefeicao()

//let numero = Int("5sdsd")
//print(numero)

let numero = Int("5as")
if let n = numero {
    print(n)
} else {
    print("erro ao converter string para int")
}

class Refeicao {
    //MARK: Atributos
    var nome: String
    var felicidade: String
    var itens: Array<Item>
    
    //MARK: Construtor
    init(_ nome: String, _ felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = []
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

//let refeicao2 = Refeicao(nome: "Macarrão", felicidade: "5")
let refeicao3 = Refeicao("Macarrão", "5")
print(refeicao3.nome)

class Item {
    var nome: String
    var calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}

let arroz = Item(nome: "Arroz", calorias: 51.0)
let feijao = Item(nome: "Feijão", calorias: 90.0)
let contraFile = Item(nome: "Contra Filé", calorias: 287.0)

let refeicao = Refeicao("Almoço", "5")
refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contraFile)

print(refeicao.nome)
if let primeiroItemDaLista = refeicao.itens.first {
    print(primeiroItemDaLista.nome)
}

print(refeicao.totalDeCalorias())
