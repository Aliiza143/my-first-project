// import 'package:flutter/material.dart';
//
// class Mydrawer extends StatelessWidget {
//   const Mydrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.orange,
//         title: Text("Drawer Lesson"),
//         centerTitle:true,
//       ),
//       body: Center(
//         ////allows me to choose all text or part of them
//         child: SelectableText("...Eng.......Layla............Yusuf.", style: TextStyle(fontSize: 30),),),
//
//       drawer:
//       Container(
//          width: 150,
//         // height: 300,
//         color: Colors.white,
//         child: ListView(
//           children: [
//             DrawerHeader(
//                 decoration: BoxDecoration(
//                     // color: Colors.amber
//                 ),
//                 child: Text("Navigation Menu")
//             ),
//             ListTile(
//               leading: Icon(Icons.tab),
//               title: Text("Tabs"),
//             ),
//             ListTile(
//               leading: Icon(Icons.list),
//               title: Text("List"),
//             ),
//             ListTile(
//               leading: Icon(Icons.table_bar),
//               title: Text("Table"),
//             ),
//             ListTile(
//               leading: Icon(Icons.text_decrease),
//               title: Text("Text"),
//             )
//           ],
//         ),
//       ),
//
//     )
//     );
//   }
// }




import 'package:assignmentafterexam/tab1.dart';
import 'package:assignmentafterexam/table1.dart';
import 'package:assignmentafterexam/text1.dart';
import 'package:flutter/material.dart';

import 'list1.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Drawer Lesson"),
        centerTitle:true,
      ),
      body: Center(
        ////allows me to choose all text or part of them
        child: SelectableText("...Eng.......Layla............Yusuf.", style: TextStyle(fontSize: 30),),),

      drawer:
      Container(
        width: 170,
        // height: 300,
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.indigo
                ),
                child: Text("Navigation Menu", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),)
            ),
            ListTile(
              leading: Icon(Icons.tab),
              title: Text("Tabs"),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> mytab()),);},
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("List"),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>  mylist()),);},
            ),
            ListTile(
              leading: Icon(Icons.table_bar),
              title: Text("Table"),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> mytable()),);},
            ),
            ListTile(
              leading: Icon(Icons.text_decrease),
              title: Text("Text"),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> mytext ()),);},
            )
          ],
        ),
      ),

    )
    );
  }
}

