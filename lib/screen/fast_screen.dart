import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FastScreen extends StatefulWidget {
  const FastScreen({Key? key}) : super(key: key);

  @override
  _FastScreenState createState() => _FastScreenState();
}

class _FastScreenState extends State<FastScreen> {
  @override
  Widget build(BuildContext context) {
    final double Hight= MediaQuery.of(context).size.height;
    final double Width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
         children: [
           Container(
             height: Hight,
             width: Width,
             decoration: BoxDecoration(
                 image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/fstbackground.jpg")
                 )
             ),

           ),

           Container(
                   height: 400,
                   width: Width,
                   child: Padding(
                     padding: const EdgeInsets.only(top: 70),
                     child: Column(
                       children: [
                         Center(child: Text("Sing To Contunue")),
                         Center(
                           child: Text(
                               "Food Here",style: TextStyle(fontSize: 50,
                               color: Colors.white,
                               shadows:
                               [BoxShadow(blurRadius: 5,
                                   color: Colors.green.shade900,
                                   offset: Offset(3,3)
                               )
                               ]

                           )
                           ),
                         )
                       ],


               ),
                   )
               ),
         ],
      ),
    );
  }
}
