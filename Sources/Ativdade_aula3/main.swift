import Foundation

class Cofre{
    private var saldo: Double
    private var senha: Int

    init (senha:Int){
        self.saldo = 0
        self.senha = senha
    }

    func checarSaldo(){
        if self.saldo < 0 {
            print("Sua conta esta negativada")
        }
    }

    func depositar(valor: Double){
        if valor < 0{
            print("Impossivel depositar esse valor")
        }else{
            self.saldo == valor
        }
    }

    func sacar(valor: Double){
        if valor > 0 && valor < self.saldo{
            saldo -= valor
        }else if valor < 0 && valor > self.saldo {
            print("hoje nao tem festa")

        }
        print("Foi sacando o valor de \(valor) reais")
    }

}