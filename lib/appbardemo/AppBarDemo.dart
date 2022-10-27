import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          actionsIconTheme: IconThemeData(color: Colors.amber),
          elevation: 0.0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.send)),
            IconButton(onPressed: () {

            }, icon: Icon(Icons.share)),
          ],
          automaticallyImplyLeading: false,
          leading: IconButton(onPressed: (){} ,icon:Icon(Icons.list_sharp,color: Colors.amber,)),


        ),

        drawer: Drawer(
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
