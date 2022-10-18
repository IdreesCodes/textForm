import 'package:flutter/material.dart';
import 'package:newfield/home.dart';
import 'package:newfield/welcome.dart';
class Check extends StatefulWidget {

   Check({Key? key}) : super(key: key);



  @override

  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _subtitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _titleController,

              decoration: InputDecoration(
                hintText: 'Title',
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _subtitleController,
              decoration: InputDecoration(
                hintText: 'Subtitle',
              ),


            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pop(context,Profile(title1: _titleController.text, subtitle1: _subtitleController.text,),);
          }, child: Text('Save'))
        ],
      ),
    );
  }
}
