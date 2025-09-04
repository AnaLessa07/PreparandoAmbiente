import Foundation

// ATIVIDADE 1 //

/*let listaNumeros: [Int] = [-4, 3, -9, 0, 4, 1]

    func calcular(array: [Int]){
        let arraySet: Set = Set(array)
        let total = Double(arraySet.count)
        let positivo = Double(arraySet.filter{$0 > 0}.count)
        let negativos = Double(arraySet.filter{$0 < 0}.count)
        let nulo = Double(arraySet.filter{$0 == 0}.count)

        let p1 = positivo / total
        let p2 = negativos / total
        let p3 = nulo / total

        print ("""
        OS VALORES SAO:
        Positivos: \(positivo) / \(total) = \(p1)
        Negativos:  \(negativos) / \(total) = \(p2)
        Zeros:  \(nulo) / \(total) = \(p3)
        """)
 
    }

calcular (array:listaNumeros)
*/
 

// ATIVADADE 2 //

/*func obterDetalhesVoo() -> (codigo: String, destino: String, pontual: Bool){
    return (codigo: "130613", destino: "RJ", pontual: true)
}

let detalhesVoo = obterDetalhesVoo()

print ("""
O voo \(detalhesVoo.codigo) para \(detalhesVoo.destino) está 
com o status pontual: \(detalhesVoo.pontual).
""")
*/

// ATIVADADE 3 //

func calcularVendasdoDia () -> (produtosVendidos: Int, valorTotal: Double, clienteDestaque: String){
    return (produtosVendidos: 235, valorTotal: 4750.80, clienteDestaque: "Supermercado ABC")
}

let relatorioDeHoje = calcularVendasdoDia()
print ("""
--- Telatorio de vendas [13/06/2013] ---
produtos vendidos: \(relatorioDeHoje.produtosVendidos)
total: \(relatorioDeHoje.valorTotal)
cleinte: \(relatorioDeHoje.clienteDestaque)
""")
