import 'package:flutter/material.dart';

class NewNavBar extends StatelessWidget {
  List<Icon> icons;
  NewNavBar({this.icons = const []});

  void botaoFoiTocado(int index) {
    print("Tocaram no botão: $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: botaoFoiTocado,
        items: icons
            .map((obj) => BottomNavigationBarItem(icon: obj, label: "Icon"))
            .toList());
  }
}

class NewScaffold extends StatelessWidget {
  NewScaffold();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Expanded(
            child: Text("1» La Fin Du Monde - Bock - 65 ibu"),
          ),
          Expanded(
            child: Text("2» Sapporo Premiume - Sour Ale - 54 ibu"),
          ),
          Expanded(
            child: Text("3» Duvel - Pilsner - 82 ibu"),
          ),
          Expanded(child: Text("4» Antartica - Ruindade - 10 ibu"),
          ),
        ],
      ),
    );
  }
}
class NewAppBar extends AppBar {
  NewAppBar()
      : super(
          title: Text('Top ranking de Cervejas',),
          backgroundColor: Colors.cyan,
        );
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: NewAppBar(),
        body: NewScaffold(),
        bottomNavigationBar: NewNavBar(
          icons: [
            Icon(Icons.coffee_outlined),
            Icon(Icons.local_drink_outlined),
            Icon(Icons.flag_outlined)
          ]
        )
      ),
    );
  }
}