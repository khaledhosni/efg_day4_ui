import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Screen(),
          ),
        ),
      ),
      builder: EasyLoading.init(),
    );
  }
}


class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [

          ElevatedButton(onPressed: (){

            // Fluttertoast.showToast(
            //     msg: "This is Center Short Toast",
            //     toastLength: Toast.LENGTH_SHORT,
            //     gravity: ToastGravity.CENTER,
            //     timeInSecForIosWeb: 1,
            //     backgroundColor: Colors.red,
            //     textColor: Colors.white,
            //     fontSize: 16.0
            // );

            EasyLoading.dismiss();
          }, child: Text('Show Toast')),
          ElevatedButton(onPressed: (){

          //  EasyLoading.showInfo('Useful Information.');

            EasyLoading.show(status: 'Loading...' );



          }, child: Text('Show Toast')),

          ElevatedButton(onPressed: (){

          showDialog(context: context, builder: (BuildContext context) {

            return AlertDialog(
              title: Text(" Deleting Image"),
              content: Text("You are about to delete this image, are you sure?"),

              actions: [

                TextButton(onPressed: (){

                  Navigator.of(context).pop();
                }, child: Text("Cancel")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();

                }, child: Text("No")),
                TextButton(onPressed: (){

                  Navigator.of(context).pop();
                }, child: Text("Yes")),


              ],

            );

          },
          barrierDismissible: false,
          );



          }, child: Text('Show Confirm Dialog')),

          ElevatedButton(onPressed: ()async{

            DateTime? pickedDate =await showDatePicker(context: context, firstDate: DateTime(1930),lastDate: DateTime(2025),initialDate: DateTime.now(),
            );


            if(pickedDate!=null)
            EasyLoading.showInfo('${pickedDate!.year}/${pickedDate!.month}/${pickedDate!.day}');
            else
              EasyLoading.showToast('No selected date');


          }, child: Text('Show Date Picker')),

        ],

      ),
    );
  }


}

