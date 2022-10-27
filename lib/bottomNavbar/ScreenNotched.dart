import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Screen()
    );
  }
}
class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Widget _currentScreen= Text('');
  int _currentIndex=0;

  var screens=[
    Text('Screen A'),
    Text('Screen B'),
    Text('Screen C'),
    Text('Screen Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(

          child: _currentScreen,
        )
    ),
       bottomNavigationBar: BottomAppBar(

         notchMargin: 5,

           shape: CircularNotchedRectangle(),
         child: Row(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children :[
         IconButton(icon: Icon(Icons.home),onPressed: (){},),
         IconButton(icon: Icon(Icons.drive_eta_outlined),onPressed: (){},),
         IconButton(icon: Icon(Icons.account_circle_outlined),onPressed: (){},),
         IconButton(icon: Icon(Icons.settings),onPressed: (){},),
       ]),






    ),

      floatingActionButton: FloatingActionButton(onPressed: () {  }, child: Icon(Icons.camera_alt_outlined)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
