import 'package:flutter/material.dart';
class mytable extends StatelessWidget {
  const mytable({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.menu)),
            title: Text("Table file"),
            backgroundColor: Colors.blueAccent),
      )),
    );
  }
}
