import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _TestflutterState();
}

class _TestflutterState extends State<Next> {
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









]
          )
        ),)


    ));
  }
}
