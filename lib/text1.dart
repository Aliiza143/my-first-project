import 'package:flutter/material.dart';
class mytext extends StatelessWidget {
  const mytext({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.menu)),
            title: Text("Text file"),
            backgroundColor: Colors.blueAccent),
      )),
    );
  }
}
