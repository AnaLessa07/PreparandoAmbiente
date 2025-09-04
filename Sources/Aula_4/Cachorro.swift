import Foundation

class Cachorro: Animal {
    override func emitirSom(){
        print("Au, au")
    }

    func emitirSom(nome: String){
        print("O \(nome) esta rosnando")
    }
}
