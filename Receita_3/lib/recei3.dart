import 'package:flutter/material.dart';

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: NewAppBar(),              
        body: DataBodyWidget(
          
          objects: [
            "1» La Fin Du Monde - Bock - 65 ibu",
            "2» Sapporo Premiume - Sour Ale - 54 ibu",
            "3» Duvel - Pilsner - 82 ibu"
            "4» Antartica - Ruindade - 10 ibu"
          ]
        ),
        bottomNavigationBar: NewNavBar(
          icons: [
            Icon(Icons.home),
            Icon(Icons.contact_phone),
            Icon(Icons.settings)
          ],
        ),
      ),
    );
  }
}

class NewAppBar extends StatelessWidget implements PreferredSizeWidget{
  NewAppBar();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Top rankings de Cervejas"),
      backgroundColor: Colors.cyan,
      actions: [
        PopupMenuButton<Color>(
          onSelected: (Color color) {
                  // como fará para lidar com a escolha da cor
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem<Color>(
                child: Text('Cyan'),
                value: Colors.cyan,
              ),
              PopupMenuItem<Color>(
                  child: Text('Grey'),
                  value: Colors.grey,
              ),
              PopupMenuItem<Color>(
                child: Text('Brown'),
                value: Colors.brown,
              ),
            ];
          }
        )
      ]
    );
  }
}

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
        items: icons.map(
              (obj) => BottomNavigationBarItem(icon: obj, label: "Icon"))
            .toList());
  }
}

class DataBodyWidget extends StatelessWidget {
  List<String> objects;

  DataBodyWidget({this.objects = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: objects.map(
          (obj) =>Expanded(
            child: Center(child: Text(obj)))
    ).toList());
  }
}