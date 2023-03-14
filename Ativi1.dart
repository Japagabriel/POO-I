void main(){
    Produto coca = Produto(preco: 10.50,desc: "Coca-Cola de lata",data: DateTime.now());
    Produto maca = Produto(preco: 2.00,desc: "Maçã",data: DateTime.now());
    Produto leite = Produto(preco: 5.00,desc: "Leite",data: DateTime.now());

    Item engradado = Item(quantidade: 1, prod: coca);
    Item uni = Item(quantidade: 1, prod: maca);
    Item caixa = Item(quantidade: 1, prod: leite);

    Venda venda = Venda(DateTime.now());
    // O item deve ser adicionado a lista utilizando a função
    venda.addItem(uni);
    venda.addItem(engradado);
    venda.addItem(caixa);
    
    print(venda);
    
}

class Venda{
    final DateTime data;
    List<Item> itens = [];
    
    double total() => itens.fold(0,(soma,elemento) => soma + elemento.total());
    Venda(this.data);
    
    void addItem(Item item){
        itens.add(item);
    }

    @override
    String toString() => "\nData: ${this.data} \n Itens: (\n${this.itens}\n) \n Preço total da venda: ${this.total()}";
}

class Item{
    final double quantidade;
    Produto prod;

    double total(){
        return quantidade * prod.preco;
    }

    Item({required double this.quantidade, required Produto this.prod});

    @override
    String toString() => "\nQuantidade: ${this.quantidade} \n (Produto: ${this.prod}) Preço total do item: ${this.total()}\n -=========================-";
}

class Produto{
    final double preco;
    final String desc;
    final DateTime data;

    Produto({required double this.preco, required String this.desc, required DateTime this.data});

    @override
    String toString() => "Preco do produto: ${this.preco} \n Descrição: ${this.desc} \n Data: ${this.data}\n";
}