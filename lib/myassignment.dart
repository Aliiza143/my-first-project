import 'package:flutter/material.dart';

import 'data.dart';
import 'endchapter.dart';
import 'next.dart';

class first1 extends StatefulWidget {
  const first1({super.key});

  @override
  State<first1> createState() => _first1State();
}

class _first1State extends State<first1> {
  int _Selectindex=0;
  late final List<Widget> _pages=[
    Center(child: ListTile(
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> Mydrawer ()),);},
    ),),
    Center(child: ListTile(
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> Testflutter ()),);},
    ),),
    Center(child: ListTile(
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=> Next ()),);},
    ),)



  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Beautiful flutter app.."),),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _Selectindex,
              onTap: (index){
                setState(() {
                  _Selectindex=index;
                });
              },
              selectedItemColor: Colors.white,
              backgroundColor: Colors.orange,

              items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),

          ]),


          body: _pages[_Selectindex]


      )),
    );
  }
}
