import Foundation

class Carro {
    private var marca: String
    private var modelo: String
    private var senha: Int

    init(marca: String, modelo: String, senha: Int){
        self.modelo = modelo
        self.marca = marca
        self.senha = senha
    }
    
    func acelerar(){
        print("O \(modelo) esta acelerando")
    }

    func frear(){
        print("O \(modelo) esta freando")
    }

    func getMarca() -> String{
        return self.marca
    }

    private func setMarca(marca: String){
        self.marca = marca
        
    }
    public func alterarMarca(senha: Int, novaMarca: String){
        if self.senha == senha{
            self.setMarca(marca: novaMarca)
        }
    }

    public func getModelo() -> String{
        return modelo
    }
}
