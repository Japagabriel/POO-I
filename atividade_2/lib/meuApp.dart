import 'package:flutter/material.dart';
import 'botoes.dart';

TextStyle _boldTextStyle = TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.lightBlueAccent);

void meuApp(){
 MaterialApp app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World", style: _boldTextStyle)
        ),
        body: Center(
          child: Column(children:[
          Expanded(
            child: Text("La Fin Du Monde - Bock - 65 ibu", style: _boldTextStyle),
          ),
          Expanded(
            child: Text("Sapporo Premiume - Sour Ale - 54 ibu" , style: _boldTextStyle),
          ),
          Expanded(
            child: Text("Duvel - Pilsner - 82 ibu", style: _boldTextStyle),
          )

        ]
          )
        ),
        bottomNavigationBar: NewNavBar(),
        ),
  );

  runApp(app);
  }