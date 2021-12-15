import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Home",
          style: TextStyle
            (fontSize: 17,color: Colors.black),),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search,size: 17,color: Colors.red,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop,size: 17,color: Colors.green),
            ),
          )
        ],
      ),
      body:Column(
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Container(
          height: 150,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/homscnd.jpg"),fit: BoxFit.cover),
              color: Colors.red,
              borderRadius: BorderRadiusDirectional.circular(10)
          ),
            child: Row(
              children: [
                Container(
                height: 40,
                width: 100,
                color: Colors.blue,
                )
              ],
            ),
          ),
        )
        ]
      )
    );

  }
}
