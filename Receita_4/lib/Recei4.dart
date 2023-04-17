import 'package:flutter/material.dart';
import 'dataObjects.dart';
class MeuApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar( 
          title:Center(
                  child:Text("Top Bebidas"),
                ),
          ),

        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataBodyWidget(objects: dataObjects)
          )
      ),
      
        bottomNavigationBar: NewNavBar(),

      )
    );
  }
}


class NewNavBar extends StatelessWidget {

  NewNavBar();

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");

  }

  @override

  Widget build(BuildContext context) {

    return BottomNavigationBar(onTap: botaoFoiTocado, items: const [
      BottomNavigationBarItem(
        label: "Cafés",
        icon: Icon(Icons.coffee_outlined),

      ),

      BottomNavigationBarItem(
          label: "Cervejas", 
          icon: Icon(Icons.local_drink_outlined)),

      BottomNavigationBarItem(
        label: "Nações", 
        icon: Icon(Icons.flag_outlined))

    ]);

  }

}

class MytileWidget extends StatelessWidget {

  List<Map<String, String>> objects;

  MytileWidget( {this.objects = const [] });

  @override

  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: objects.length,
      itemBuilder: (context, index) {
        final obj = objects[index];
        
        return ListTile(
          title: Text(obj["name"]!),
          subtitle: Text("${obj["style"]} - IBU: ${obj["ibu"]}"),
        
        );
      },
    );
  }
}      
      

class DataBodyWidget extends StatelessWidget {

  List objects;

  DataBodyWidget( {this.objects = const [] });

  @override

  Widget build(BuildContext context) {

    var columnNames = ["Nome","Estilo","IBU"],
        propertyNames = ["name", "style", "ibu"];    

    return DataTable(
      columns: columnNames.map( 
                (name) => DataColumn(
                  label: Expanded(
                    child: 
                      Text(name, style: TextStyle(fontStyle: FontStyle.italic))
                  )
                )
              ).toList(),

      rows: objects.map( 
        (obj) => DataRow(
            cells: propertyNames.map(
              (propName) => DataCell(Text(obj[propName]))

            ).toList()
          )

        ).toList());

  }

}