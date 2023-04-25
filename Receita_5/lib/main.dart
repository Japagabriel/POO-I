import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  

  final TextEditingController _controleNome = TextEditingController();
  final TextEditingController _controleQTD = TextEditingController();
  final TextEditingController _controleValor = TextEditingController();
  final TextEditingController _controleFDBack = TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Center(child:Text('Cadastrando produto'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controleNome,
                decoration: InputDecoration(labelText: 'Nome'),
                keyboardType: TextInputType.number,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controleQTD,
                decoration: InputDecoration(labelText: 'Quantidade'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controleValor,
                decoration: InputDecoration(labelText: 'Valor'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controleFDBack,
                decoration: InputDecoration(labelText: 'Avaliação'),
                keyboardType: TextInputType.number,
              ),
            ),
            
            ElevatedButton(
              child: Text('Cadastrar'),
              onPressed: () {
                final String nome = _controleNome.text;
                final int? quantidade = int.tryParse(_controleQTD.text);
                final double? valor = double.tryParse(_controleValor.text);
                final double? FDBack = double.tryParse(_controleFDBack.text);

                final Produto prodNovo = Produto(nome, quantidade, valor, FDBack);
                print(prodNovo);
              },
            )
          ],
        ),
      ),
    );
  }
  }

class Produto {
  final String nome;
  final int? quantidade;
  final double? valor;
  final double? fdback;

  Produto(
    this.nome,
    this.quantidade,
    this.valor,
    this.fdback,
  );
  @override
  String toString() {
    return 'Produto{nome: $nome, quantidade: $quantidade, valor: $valor, Avaliação: $fdback}';
  }
}


