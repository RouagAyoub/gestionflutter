import 'package:flutter/material.dart';
import 'package:gestion/sidebare/sidebare.dart';

class Rdvpage extends StatefulWidget {
  Rdvpage({Key? key}) : super(key: key);

  @override
  _RdvpageState createState() => _RdvpageState();
}

class _RdvpageState extends State<Rdvpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
        columns: [
          DataColumn(
              label: Text('ID',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          DataColumn(
              label: Text('Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          DataColumn(
              label: Text('Profession',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Stephen')),
            DataCell(Text('Actor')),
          ]),
          DataRow(cells: [
            DataCell(Text('5')),
            DataCell(Text('John')),
            DataCell(Text('Student')),
          ]),
          DataRow(cells: [
            DataCell(Text('10')),
            DataCell(Text('Harry')),
            DataCell(Text('Leader')),
          ]),
          DataRow(cells: [
            DataCell(Text('15')),
            DataCell(Text('Peter')),
            DataCell(Text('Scientist')),
          ]),
        ],
      ),
    );
  }
}
