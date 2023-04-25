import 'package:flutter/material.dart';
import 'json.dart';
void main() {
  MyApp app = MyApp();

  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.cyan),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title:Center(child: const Text("Dicas"),) ,
          ),
          body: MytileWidget(
              objects: dataObjects, prosNames: ['Style', 'Ibu']),
          bottomNavigationBar: NewNavBar(),
        ));
  }
}

class NewNavBar extends StatelessWidget {
  NewNavBar();

  void botaoFoiTocado(int index) {
    print("Tocaram no botão: $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(onTap: botaoFoiTocado, items: const [
      BottomNavigationBarItem(
        label: "Cafés",
        icon: Icon(Icons.coffee_outlined),
      ),
      BottomNavigationBarItem(
          label: "Cervejas", icon: Icon(Icons.local_drink_outlined)),
      BottomNavigationBarItem(label: "Nações", icon: Icon(Icons.flag_outlined))
    ]);
  }
}

class DataBodyWidget extends StatelessWidget {
  List objects;
  List propertyNames;
  List collumnNames;

  DataBodyWidget(
      {this.objects = const [],
      this.propertyNames = const [],
      this.collumnNames = const []});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DataTable(
            columns: collumnNames
                .map((name) => DataColumn(
                    label: Expanded(
                        child: Text(name,
                            style: TextStyle(fontStyle: FontStyle.normal)))))
                .toList(),
            rows: objects
                .map((obj) => DataRow(
                    cells: propertyNames
                        .map((propName) => DataCell(Text(obj[propName])))
                        .toList()))
                .toList())
      ],
    );
  }
}

class MytileWidget extends StatelessWidget {
  List objects;
  List prosNames;

  MytileWidget({this.objects = const [], this.prosNames = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: objects.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Center(child: Text(objects[index]["name"])),
              subtitle: Center(child:Text(
                  "${prosNames[0]}: ${objects[index]["style"]}, IBU: ${objects[index]["ibu"]}")),
            ),
          );
        });
  }
}