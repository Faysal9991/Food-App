import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screen/food_details.dart';
import 'package:food_app/screen/model/model_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
FoodDetailsModel foodDetails1=FoodDetailsModel(
    "Meat-Burger",
    "assets/images/bargar.png",
     50
    );
FoodDetailsModel foodDetails2=FoodDetailsModel(
    "Meat-Burger",
    "assets/images/bargar.png",
    50
);FoodDetailsModel foodDetails3=FoodDetailsModel(
    "Meat-Burger",
    "assets/images/bargar.png",
    50
);FoodDetailsModel foodDetails4=FoodDetailsModel(
    "Meat-Burger",
    "assets/images/bargar.png",
    50
);FoodDetailsModel foodDetails5=FoodDetailsModel(
    "Meat-Burger",
    "assets/images/bargar.png",
    50
);FoodDetailsModel foodDetails6=FoodDetailsModel(
    "Meat-Burger",
    "assets/images/bargar.png",
    50
);FoodDetailsModel foodDetails7=FoodDetailsModel(
    "Meat-Burger",
    "assets/images/bargar.png",
    50
);
List<FoodDetailsModel> foodDetails=[
  foodDetails1,
foodDetails2,
foodDetails3,
foodDetails4,
foodDetails5,
foodDetails6,
foodDetails7
];





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
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

              children: [
               InkWell(onTap: (){

               },
                 child: Container(
                   height: height*0.04,
                   width: width*0.3,
                   decoration: BoxDecoration(
                     color: Colors.yellow,
                     borderRadius: BorderRadiusDirectional.circular(25),
                   ),
                   child:  Padding(
                     padding:  EdgeInsets.only(top: height*0.007,left: width*0.016),
                     child: Text("Recommended",style: GoogleFonts.lato(
                       textStyle: TextStyle
                         (color: Colors.black, fontSize:width*0.04,fontWeight: FontWeight.bold
                       ),
                     )
                     ),
                   ),
                 ),
               ),
                SizedBox(width: width*0.009),
                Container(
                  height: height*0.04,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadiusDirectional.circular(25),
                  ),
                  child:  Padding(
                    padding:  EdgeInsets.only(top: height*0.007,left: width*0.05),
                    child: Text("Fast Food",style: GoogleFonts.lato(
                      textStyle: TextStyle
                        (color: Colors.black, fontSize:width*0.04,fontWeight: FontWeight.bold
                      ),
                    )
                    ),
                  ),
                ),
                SizedBox(width: width*0.009),
                Container(
                  height: height*0.04,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadiusDirectional.circular(25),
                  ),
                  child:  Padding(
                    padding:  EdgeInsets.only(top: height*0.007,left: width*0.016),
                    child: Text("Bd Popular",style: GoogleFonts.lato(
                      textStyle: TextStyle
                        (color: Colors.black, fontSize:width*0.04,fontWeight: FontWeight.bold
                      ),
                    )
                    ),
                  ),
                ),
                SizedBox(width: width*0.009),
                Container(
                  height: height*0.04,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadiusDirectional.circular(25),
                  ),
                  child:  Padding(
                    padding:  EdgeInsets.only(top: height*0.007,left: width*0.016),
                    child: Text("Confectionery",style: GoogleFonts.lato(
                      textStyle: TextStyle
                        (color: Colors.black, fontSize:width*0.04,fontWeight: FontWeight.bold
                      ),
                    )
                    ),
                  ),
                ),
                SizedBox(width: width*0.009),
                Container(
                  height: height*0.04,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadiusDirectional.circular(25),
                  ),
                  child:  Padding(
                    padding:  EdgeInsets.only(top: height*0.007,left: width*0.016),
                    child: Text("Drinks",style: GoogleFonts.lato(
                      textStyle: TextStyle
                        (color: Colors.black, fontSize:width*0.04,fontWeight: FontWeight.bold
                      ),
                    )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
          Expanded(
            child: ListView.builder(
              itemCount: foodDetails.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>FoodDetails(fName: foodDetails[index].foodname
                      ,fImage: foodDetails[index].foodimage, fPrice:foodDetails[index].foodprice,)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.35,
                          width: width*0.46,
                          decoration: BoxDecoration(

                            color: Colors.yellow,
                              borderRadius: BorderRadiusDirectional.circular(10),

                          ),
                          child: Column(
                            children: [

                              Padding(
                                padding: EdgeInsets.only(top: height*0.01),
                                child: Image.asset(foodDetails[index].foodimage),
                              ),
                              SizedBox(height: height*0.04),
                              Text(foodDetails[index].foodname,style: GoogleFonts.lato(
                                textStyle: TextStyle
                                  (color: Colors.black, fontSize:width*0.07,fontWeight: FontWeight.bold
                                ),
                              ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: width/7),
                                    child: Text("Price:  ",style: GoogleFonts.lato(
                                      textStyle: TextStyle
                                        (color: Colors.black, fontSize:width*0.05,fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    ),
                                  ),
                                  Text(foodDetails[index].foodprice.toString(),style: TextStyle(color: Colors.black),),
                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ]
      )
    );

  }
}
