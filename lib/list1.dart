import 'package:flutter/material.dart';
class mylist extends StatelessWidget {
  const mylist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.menu)),
            title: Text("List file"),
            backgroundColor: Colors.blueAccent),
      )),
    );
  }
}
