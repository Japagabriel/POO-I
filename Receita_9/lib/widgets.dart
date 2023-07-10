import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import '../data_service.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.cyan),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Center(child: Text("Receita 9"),), actions: [
            PopupMenuButton(
              itemBuilder: (_) => [5, 10, 15]
                  .map((num) => PopupMenuItem(
                        value: num,
                        child: Text("Carregar $num itens por vez"),
                      ))
                  .toList(),
              onSelected: (number) {
                dataService.numberOfItems = number;
              },
            )
          ]),
          body: ValueListenableBuilder(
              valueListenable: dataService.tableStateNotifier,
              builder: (_, value, __) {
                switch (value['status']) {
                  case TableStatus.idle:
                    return Center(child: Text("Toque em algum botão"));

                  case TableStatus.loading:
                    return Center(child: CircularProgressIndicator());

                  case TableStatus.ready:
                    return SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTableWidget(
                            jsonObjects: value['dataObjects'],
                            propertyNames: value['propertyNames'],
                            columnNames: value['columnNames'],
                          ),
                        ));

                  case TableStatus.error:
                    return Text("Só o pai para iluminar...");
                }

                return Text("...");
              }),
          bottomNavigationBar:
              NewNavBar(itemSelectedCallback: dataService.load),
        ));
  }
}

class NewNavBar extends HookWidget {
  final _itemSelectedCallback;

  NewNavBar({itemSelectedCallback})
      : _itemSelectedCallback = itemSelectedCallback ?? (int) {}

  @override
  Widget build(BuildContext context) {
    var state = useState(0);

    return BottomNavigationBar(
        onTap: (index) {
          state.value = index;

          _itemSelectedCallback(index);
        },
        currentIndex: state.value,
        items: const [
          BottomNavigationBarItem(
            label: "Cafés",
            icon: Icon(Icons.coffee_outlined),
          ),
          BottomNavigationBarItem(
              label: "Cervejas", icon: Icon(Icons.local_drink_outlined)),
          BottomNavigationBarItem(
              label: "Nações", icon: Icon(Icons.flag_outlined))
        ]);
  }
}

class DataTableWidget extends StatelessWidget {
  final List jsonObjects;

  final List<String> columnNames;

  final List<String> propertyNames;

  DataTableWidget(
      {this.jsonObjects = const [],
      this.columnNames = const [],
      this.propertyNames = const []});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: columnNames
          .map(
            (name) => DataColumn(
              label: Expanded(
                child: Text(
                  name,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          )
          .toList(),
      rows: jsonObjects
          .map(
            (obj) => DataRow(
              cells: propertyNames
                  .map(
                    (propName) => DataCell(
                      Text(obj[propName]),
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
    );
  }
}