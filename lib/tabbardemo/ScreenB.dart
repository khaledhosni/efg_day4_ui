import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  late TabController _controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Screen(),
        ));
  }
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> with SingleTickerProviderStateMixin{

  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller=TabController(vsync: this,length: 3);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        
        children: [
          TabBar(
          controller: controller,
            labelColor: Colors.amber,
            tabs: [
              Tab(
                icon: Icon(Icons.flight),
              ),
              Tab(
                icon: Icon(Icons.flight),
              ),
              Tab(
                icon: Icon(Icons.flight),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                Center(
                  child: Container(
                    child: Text('Hello World'),
                  ),
                ),
                Text(
                  "second page",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Third page",
                  style: TextStyle(fontSize: 30),
                ),
                
              ],
            ),
          ),

          FloatingActionButton(onPressed: (){

          }),

        ],
      ),
    );
  }
}
