import 'package:flutter/material.dart';

class Testflutter extends StatefulWidget {
  const Testflutter({super.key});

  @override
  State<Testflutter> createState() => _TestflutterState();
}

class _TestflutterState extends State<Testflutter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: SafeArea(child: Scaffold(
            appBar: AppBar(
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
              backgroundColor: Colors.teal,
              title: Text(" Beautiful flutter app.."),),
            body: Column(
              children: [
                ////list of tabs
                TabBar(
                    tabs: [
                      Tab(text: "Home",),
                      Tab(text: "Search",),
                      Tab(text: "Profile",)
                    ]),

                SizedBox(height: 30,),

                DataTable(
                    border: TableBorder.all(width: 2),
                    columns: [
                      DataColumn(label: Text("Id")),
                      DataColumn(label: Text("Name")),
                      DataColumn(label: Text("City"))
                    ], rows: [
                  DataRow(cells: [
                    DataCell(Text("C120625")),
                    DataCell(Text("Layla")),
                    DataCell(Text("Mogadishu"))]),
                  DataRow(cells: [
                    DataCell(Text("C120626")),
                    DataCell(Text("Rayan")),
                    DataCell(Text("Mogadishu"))]),
                ]),


                ])

          ),)
        )

    );
  }
}
