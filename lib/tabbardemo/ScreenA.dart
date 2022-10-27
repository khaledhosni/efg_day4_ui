import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.flight),),
              Tab(icon: Icon(Icons.flight),),
              Tab(icon: Icon(Icons.flight),),

            ],

            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Container(
                  child: Text('Hello World'),
                ),
              ),
              
              Text("second page",style: TextStyle(fontSize: 30),),
              Text("Third page",style: TextStyle(fontSize: 30),),
            ],
          )
        ),
      ),
    );
  }
}
