import 'package:flutter/material.dart';

class MeuApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabela de cervejas',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cervejas', style: TextStyle(color: Colors.blueAccent)),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text('Nome'
                    //   style: TextStyle(fontStyle: FontStyle.italic),
                    ),
              ),
              DataColumn(
                label: Text('Estilo'
                    // style: TextStyle(fontStyle: FontStyle.italic),
                    ),
              ),
              DataColumn(
                label: Text('IBU'
                    // style: TextStyle(fontStyle: FontStyle.italic),
                    ),
              ),
              DataColumn(
                label: Text('Local de fabricação'),
              ),
              DataColumn(
                label: Text('Teor alcoólico')
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('La Fin Du Monde')),
                DataCell(Text('Bock')),
                DataCell(Text('65')),
                DataCell(Text('Canadá')),
                DataCell(Text('9% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Sapporo Premium')),
                DataCell(Text('Sour Ale')),
                DataCell(Text('54')),
                DataCell(Text('Estados Unidos')),
                DataCell(Text('4,9% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Duvel')),
                DataCell(Text('Plisner')),
                DataCell(Text('82')),
                DataCell(Text('Bélgica')),
                DataCell(Text('8,5% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Sierra Nevada Pale Ale')),
                DataCell(Text('American Pale Ale')),
                DataCell(Text('38')),
                DataCell(Text('Estados Unidos')),
                DataCell(Text('5,6% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Antartica')),
                DataCell(Text('Pilsen')),
                DataCell(Text('9.00')),
                DataCell(Text('Brasil')),
                DataCell(Text('6% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Itaipava')),
                DataCell(Text('American Lager')),
                DataCell(Text('9.5')),
                DataCell(Text('Brasil')),
                DataCell(Text('4,0% - 4,9% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('La Fin Du Monde')),
                DataCell(Text('Belgian Tripel ')),
                DataCell(Text('19')),
                DataCell(Text('Canadá')),
                DataCell(Text('9,0% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Miller Lite')),
                DataCell(Text('American Light Lager')),
                DataCell(Text('10')),
                DataCell(Text('Estados Unidos')),
                DataCell(Text('5,0% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('IPA')),
                DataCell(Text('Blond Ale')),
                DataCell(Text('40')),
                DataCell(Text('Inglaterra')),
                DataCell(Text('7,5% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Pilsner Urquell')),
                DataCell(Text('Czech Pilsner')),
                DataCell(Text('40')),
                DataCell(Text('República Tcheca')),
                DataCell(Text('4,4% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Paulaner')),
                DataCell(Text('Munich Helles Lager')),
                DataCell(Text('18')),
                DataCell(Text('Alemanha')),
                DataCell(Text('5,5% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Heineken')),
                DataCell(Text('International Pale Lager')),
                DataCell(Text('23')),
                DataCell(Text('Holanda')),
                DataCell(Text('4,5% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Miller 64')),
                DataCell(Text('Lite American Lager')),
                DataCell(Text('0.00')),
                DataCell(Text('Brasil')),
                DataCell(Text('4,7% de álcool')),
              ]),
              DataRow(cells: [
                DataCell(Text('Glassial')),
                DataCell(Text('Não encontrado')),
                DataCell(Text('6.50')),
                DataCell(Text('Brasil')),
                DataCell(Text('4,4% de álcool')),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}