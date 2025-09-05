import Foundation

// exemplo feito em aula

/*class Carro {
    private (set) var marca: String
    private (set) var modelo: String

    init (marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }

    public func acelerar(){
        print("O carro esta acelerado")
    }

    public func frear(){
        print("o carro frear")
    }


    public func getMarca() -> String{
        return self.marca
    }

    private func setMarca(marca: String){
        self.marca = marca
    }

    public func alterarM(senha: Int, novaM: String) {
        if senha == 123 {
            self.setMarca(marca: novaM)
        }
    }

}
let carro = Carro(marca: "Ford", modelo: "")

print()
print(carro.modelo)

carro.alterarM(senha:123, novaM:"cheveront")
print(carro.marca) */

// ATIVIDADE 2 //

class PerfilUsuario {
    public let id: UUID
    public let dataDeCadastro: Date
    public var nomeDeExibicao: String
    private(set) var hashDaSenha: String


    init (nomeDeExibicao: String, senha: String){
        self.id = UUID()
        self.dataDeCadastro = Date()
        self.nomeDeExibicao = nomeDeExibicao
        self.hashDaSenha = senha + "_hashed"
    }

    public func alterarSenha (novaSenha: String) -> Bool{
        if novaSenha.count < 8 {
            print("A nova senha deve ter pelo menos 8 caracteres.")
            return false
        }
        self.hashDaSenha = novaSenha + "_hashed"
        return true
    }

    public func autenticar (senha: String) -> Bool{
        let hashear = senha + "_hashed"
        if hashDaSenha == hashear{
            return true
        } else{
            return false
        }
    }
}

let usuario = PerfilUsuario(nomeDeExibicao: "Alex", senha: "senhaSegura123")
print("Login com senha correta: \(usuario.autenticar(senha: "senhaSegura123"))")
// Esperado: true
