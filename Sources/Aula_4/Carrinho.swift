class Carro: MeuCarro{
    var numeroDePortas: Int

    init (numeroDePortas: Int, marca: String, ano: Int){
        self.numeroDePortas = numeroDePortas
        super.init (marca: marca, ano: ano)
    } 

    override func apresentar(){
        
    }

}

