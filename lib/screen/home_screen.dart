import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
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
      body:
      Column(
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
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text("30% Off"
                    , style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blue[100]),
                  ),
                  SizedBox(height: 17,),
                  Text("On Every Friday",
                    style: TextStyle(color: Colors.white,),
                  )
                ],
              ),
            ),
          ),
        ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: height*0.3,
                  width: width*0.4,
                  decoration: BoxDecoration(image:
                  DecorationImage(image: AssetImage("assets/images/bargar.png"),fit: BoxFit.fitWidth
                  ),
                  borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.yellow,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Barger",style:GoogleFonts.abel
                            (fontSize:30,color: Color(0xffFF0000),fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),


                        child: Align(
                          alignment: Alignment.center,
                          child: Text("20% Cash back\n ONLY 45 TK",style:GoogleFonts.aleo
                            (fontSize:15,color: Color(0xff33CC33),fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width*0.0081,),
                Container(
                  height: height*0.3,
                  width: width*0.4,
                  decoration: BoxDecoration(image:
                  DecorationImage(image: AssetImage("assets/images/fried-chicken.png"),fit: BoxFit.fitWidth
                  ),
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.yellow,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),


                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Fried chicken",style:GoogleFonts.abel
                            (fontSize:18,color: Color(0xffFF0000),fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),


                        child: Align(
                          alignment: Alignment.center,
                          child: Text("10% Cash back\n ONLY 200 TK",style:GoogleFonts.aleo
                            (fontSize:15,color:Color(0xff33CC33),fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),),
                SizedBox(width: width*0.0081,),
                Container(
                  height: height*0.3,
                  width: width*0.4,
                  decoration: BoxDecoration(image:
                  DecorationImage(image: AssetImage("assets/images/bargar.png"),fit: BoxFit.fitWidth
                  ),
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.yellow,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),


                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Barger",style:GoogleFonts.abel
                            (fontSize:30,color: Color(0xffFF0000),fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),


                        child: Align(
                          alignment: Alignment.center,
                          child: Text("20% Cash back\n ONLY 45 TK",style:GoogleFonts.aleo
                            (fontSize:15,color: Color(0xff33CC33),fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),),
                SizedBox(width: width*0.0081,),
                Container(
                  height: height*0.3,
                  width: width*0.4,
                  decoration: BoxDecoration(image:
                  DecorationImage(image: AssetImage("assets/images/bargar.png"),fit: BoxFit.fitWidth
                  ),
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.yellow,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),


                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Barger",style:GoogleFonts.abel
                            (fontSize:30,color: Color(0xffFF0000),fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),


                        child: Align(
                          alignment: Alignment.center,
                          child: Text("20% Cash back\n ONLY 45 TK",style:GoogleFonts.aleo
                            (fontSize:15,color: Color(0xff33CC33),fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),),
                SizedBox(width: width*0.0081,),
                Container(
                  height: height*0.3,
                  width: width*0.4,
                  decoration: BoxDecoration(image:
                  DecorationImage(image: AssetImage("assets/images/bargar.png"),fit: BoxFit.fitWidth
                  ),
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colors.yellow,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),


                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Barger",style:GoogleFonts.abel
                            (fontSize:30,color: Color(0xffFF0000),fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.7,),


                        child: Align(
                          alignment: Alignment.center,
                          child: Text("20% Cash back\n ONLY 45 TK",style:GoogleFonts.aleo
                            (fontSize:15,color: Color(0xff33CC33),fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),),
              ],
            ),

          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text.rich(
              TextSpan(
                  text: "Most",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle
                      (color: Colors.red, fontSize:25,fontWeight: FontWeight.bold
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: "  Favourite",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Color(0xff2d9a2d), fontSize:25,fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ]
      )
    );

  }
}
