import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Breakfast extends StatefulWidget {
  const Breakfast({Key? key}) : super(key: key);

  @override
  _BreakfastState createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow,
        title: Text("Breakfast",style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Container(
            height: height*0.5,
            width: width,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Text("",style: TextStyle(fontSize: 50),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
