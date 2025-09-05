import Foundation

protocol Rastreavel {
    func obterLocalização() -> String
}

class Veiculo {
    var velocidade: Double = 0.0

    init (velocidade: Double){
        self.velocidade = velocidade
        print("Veiculo acelerando para \(velocidade) km/h")
    }

    func acelerar(){
        velocidade += 10
    }
}

class CarroDeEntrega: Veiculo, Rastreavel {
    var placa: String

    init (placa: String, velocidade: Double){
        self.placa = placa
        super.init(velocidade:velocidade)
    }

    override func acelerar() {
        velocidade += 5
    }

    func obterLocalização() -> String {
        return "O carro com a placa \(placa) esta na rua dos bobos"
    }

}

let Carro = CarroDeEntrega(placa: "siiej9", velocidade: 50)
Carro.acelerar()
Carro.obterLocalização()

