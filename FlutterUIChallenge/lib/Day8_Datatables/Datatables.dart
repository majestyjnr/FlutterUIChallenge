import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Data Tables',
    home: Datatables(),
  ));
}

class Datatables extends StatefulWidget {
  Datatables({Key key}) : super(key: key);

  @override
  _DatatablesState createState() => _DatatablesState();
}

class _DatatablesState extends State<Datatables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table'),
        elevation: 0.5,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20,
              shadowColor: Colors.blue,
              child: Padding(
                padding:const EdgeInsets.only(top: 5, bottom: 40, left: 10, right: 10),
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Image',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Description',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          CircleAvatar(
                            backgroundImage: AssetImage('images/dracula.jpg'),
                            maxRadius: 20,
                          ),
                        ),
                        DataCell(
                          Text('This is a Dracula parrot'),
                        )
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          CircleAvatar(
                            backgroundImage: AssetImage('images/duck.jpg'),
                            maxRadius: 20,
                          ),
                        ),
                        DataCell(
                          Text('This is a duck'),
                        )
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          CircleAvatar(
                            backgroundImage: AssetImage('images/rat3.jpg'),
                            maxRadius: 20,
                          ),
                        ),
                        DataCell(
                          Text('This is a rat'),
                        )
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          CircleAvatar(
                            backgroundImage: AssetImage('images/glacier.jpg'),
                            maxRadius: 20,
                          ),
                        ),
                        DataCell(
                          Text('This is a glacier'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
