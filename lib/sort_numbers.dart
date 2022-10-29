

import 'package:flutter/material.dart';

import 'animate_container.dart';
import 'createlist.dart';
class Sort_Numbers extends StatefulWidget {
  const Sort_Numbers({Key? key}) : super(key: key);

  @override

  State<Sort_Numbers> createState() => _Sort_NumbersState();
}
class _Sort_NumbersState extends State<Sort_Numbers> {

  List <Widget> Boxs =[];
  double height =0 ;
  int index =1 ;
  bool b = true;
  @override

  @override
  void initState() {
    // TODO: implement initState
    sortnumbers();
    super.initState();
  }
  void addbox()
  {
    Boxs.clear();
    for(int i = 0  ; i <= index ; i++)
      {
        Boxs.add(CreateAnimation(num: numberslist[i].toString(), ind: index,heigh: height/(index+1) ,) );
      }
    if(index < numberslist.length -1)
     {
       index++;
     }
    setState(() {

    });
  }
  Widget build(BuildContext context) {
    height= MediaQuery.of(context).size.height/2;
  if (b )
    {
      Boxs.add(CreateAnimation(num: numberslist[0].toString(), heigh: height, ind:  index,));
    }
     b = false;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body:
             Padding(
               padding: const EdgeInsets.all(20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

               crossAxisAlignment: CrossAxisAlignment.center,
               children: [

                 Center(
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),

                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: Boxs,
                     ),
                   ),
                 ),
                  Center(
                    child: Container(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(onPressed: addbox, child:
                Center(
                  child: Text("Add Number !" , style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),),
                ),style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontStyle: FontStyle.normal),
                      ),),
                    ),
                  )
            ],
          ),
             ),
        ),

    );
  }
}


