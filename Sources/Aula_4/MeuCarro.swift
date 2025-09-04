class MeuCarro{
    var marca: String
    var ano: Int

    init (marca: String, ano: Int){
        self.marca = marca
        self.ano = ano
    }

    func apresentar(){
        print("Marca: \(marca), ano: \(ano), Portas: \(numeroDePortas)")
    }
}

// nao precisa colocar fora do parametro a porta, pq por padrao o c arro tem 4 portas