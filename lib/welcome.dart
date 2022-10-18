import 'package:flutter/material.dart';
import 'package:newfield/home.dart';

import 'check.dart';

class Welcme extends StatefulWidget {


  @override
  State<Welcme> createState() => _WelcmeState();
}



class _WelcmeState extends State<Welcme> {
  List<Profile> dataList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title '),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 420,
              decoration: BoxDecoration(
                color: Colors.blue,

              ),
              child:
              IconButton(
                iconSize: 35,
                icon: const Icon(
                  Icons.add,
                ),
                color: Colors.white,
                // the method which is called
                // when button is pressed
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Check())).then((value){
                    Profile profile=value as Profile;
                    if(profile.title1.isNotEmpty && profile.subtitle1.isNotEmpty){
                      dataList.add(profile);
                      setState(() {

                      });
                    }
                  });
                },
              ),


            ),
            Expanded(
              child: ListView.builder(
                itemCount:dataList.length,
                itemBuilder: (context, index){

                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('Assets/123.jpg'),
                    ),
                    title: Text(dataList[index].title1, style: TextStyle(
                      fontSize: 24,

                    ),),
                    subtitle: Text(dataList[index].subtitle1, style: TextStyle(
                      fontSize: 15,

                    ),),

                  );

                },
              ),
            ),
        //    ElevatedButton(onPressed: (){}, child: Text('Show All'))
          ],

        ),
      ),
    );
  }
}

