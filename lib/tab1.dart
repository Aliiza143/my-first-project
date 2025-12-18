import 'package:flutter/material.dart';
class mytab extends StatelessWidget {
  const mytab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.menu)),
            title: Text("Tabs file"),
            backgroundColor: Colors.blueAccent),

      )

      ),
    );
  }
}
