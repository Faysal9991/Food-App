import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screen/food_details.dart';
import 'package:food_app/screen/menu_screen/breafast.dart';
import 'package:food_app/screen/menu_screen/dinner.dart';
import 'package:food_app/screen/menu_screen/drinks.dart';
import 'package:food_app/screen/menu_screen/fastfood.dart';
import 'package:food_app/model/model_class.dart';
import 'package:food_app/screen/menu_screen/lunch.dart';
import 'package:food_app/screen/menu_screen/sweets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

FoodDetailsModel menuDetails1= FoodDetailsModel(
    "Fast Food",
    "assets/images/fastfood.png",
    );
FoodDetailsModel menuDetails2= FoodDetailsModel(
    "Break Fast",
    "assets/images/breakfast.png",
    );
FoodDetailsModel menuDetails3= FoodDetailsModel(
    "Lunch",
    "assets/images/lunch.png",
    );
FoodDetailsModel menuDetails4= FoodDetailsModel(
    "Dinner",
    "assets/images/Dinner.png",
    );
FoodDetailsModel menuDetails5= FoodDetailsModel(
    "Confectionery",
    "assets/images/sweets.png",
    );
FoodDetailsModel menuDetails6= FoodDetailsModel(
    "Drinks",
    "assets/images/drink.png",
    );
RecomendfoddetailsModel recomnded1=RecomendfoddetailsModel(
    "Biriani",
    "assets/images/biriyani.png",
    150);
RecomendfoddetailsModel recomnded2=RecomendfoddetailsModel(
    "Haleem",
    "assets/images/hellem.png",
    200);
RecomendfoddetailsModel recomnded3=RecomendfoddetailsModel(
    "Hot dog",
    "assets/images/Hotdog.png",
    200);
RecomendfoddetailsModel recomnded4=RecomendfoddetailsModel(
    "Sandwitch",
    "assets/images/Sandwich.png",
    120);

List<RecomendfoddetailsModel>Recomendedfooddetails=[
  recomnded1,
  recomnded2,
  recomnded3,
  recomnded4,

];
List<FoodDetailsModel> fastFoodDetails=[
  menuDetails1,
  menuDetails2,
  menuDetails3,
  menuDetails4,
  menuDetails5,
  menuDetails6
];
int index=0;



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
          padding: const EdgeInsets.all(8.0),
          child: Container(
          height: height/6,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/homscnd.jpg"),fit: BoxFit.cover),
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
          Align(alignment: Alignment.topLeft,
              child: Text("Recomended",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 20,shadows: [
                Shadow(
                  offset: Offset(.0, 1.01),
                  blurRadius: 7.0,
                  color: Colors.grey,
                ),

              ],))),
          Expanded(
            child: ListView.builder(
              itemCount: Recomendedfooddetails.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Container(
                        height: height*0.23,
                        width: width*0.35,
                        decoration: BoxDecoration(

                          color: Colors.yellow,
                          borderRadius: BorderRadiusDirectional.circular(10),

                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: height*0.01),
                              child: Image.asset(Recomendedfooddetails[index].foodimage,height: height*0.1,width: width*0.7,),
                            ),
                            Text(Recomendedfooddetails[index].foodname,style: GoogleFonts.lato(
                              textStyle: TextStyle
                                (color: Colors.grey, fontSize:width*0.05,fontWeight: FontWeight.bold
                              ),
                            ),
                            ),
                            Row(
                              children: [
                                Text("        Price ",style: GoogleFonts.lato(
                                  textStyle: TextStyle
                                    (color: Colors.red, fontSize:width*0.05,fontWeight: FontWeight.bold))),
                                Text(Recomendedfooddetails[index].foodprice.toString(),style: GoogleFonts.lato(
                                  textStyle: TextStyle
                                    (color: Colors.green, fontSize:width*0.04,fontWeight: FontWeight.bold
                                  ),
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],

                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Align(alignment: Alignment.bottomLeft,
                child: Text("category",style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 25),)),
          ),

          Expanded(
                child: ListView.builder(
                  itemCount: fastFoodDetails.length,
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          Container(
                            height: height*0.23,
                            width: width*0.35,
                            decoration: BoxDecoration(

                              color: Colors.yellow,
                                borderRadius: BorderRadiusDirectional.circular(10),

                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: height*0.01),
                                  child: Image.asset(fastFoodDetails[index].foodimage,height: height*0.1,width: width*0.7,),
                                ),
                                Text(fastFoodDetails[index].foodname,style: GoogleFonts.lato(
                                  textStyle: TextStyle
                                    (color: Colors.grey, fontSize:width*0.04,fontWeight: FontWeight.bold
                                  ),
                                ),
                                ),
                                InkWell(
                                  onTap: (){
    setState(() {
    index=index;
    if(index==0)
    {
     Navigator.push(
       context,
       MaterialPageRoute(builder:
          (context) => Fastfood()),
     );
    }
    else if(index==1)
    {
    Navigator.push(
    context,
    MaterialPageRoute(builder:
    (context) => Breakfast()),
    );
    }
    else if(index==2)
    {
    Navigator.push(
    context,
    MaterialPageRoute(builder:
    (context) => lunch()),
    );
    }
    else if(index==3)
    {
    Navigator.push(
    context,
    MaterialPageRoute(builder:
    (context) => lunchfood()),
    );
    }
    else if(index==4)
    {
    Navigator.push(
    context,
    MaterialPageRoute(builder:
    (context) => Sweetfood()),
    );}
    else if(index==5)
    {
    Navigator.push(
    context,
    MaterialPageRoute(builder:
    (context) => Drinksfood()),
    );
    }
    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0xffd4d181),
                                      child: Icon(Icons.arrow_forward_rounded,size: 22,color: Colors.green),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],

                      ),
                    );
                  },
                ),
              ),

          FloatingNavigationBar(
            barHeight: height*0.07,
            barWidth: width,
          backgroundColor: Colors.black87,
          iconColor: Colors.yellow,
          textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
          ),
          iconSize: 20.0,
            items: [
          NavBarItems(icon: Icons.home,title: "Home"),
          NavBarItems( icon: Icons.search,title: "Search"),
          NavBarItems(icon: Icons.shop, title: "Cart"),

          ],
          onChanged: (value) {
          // USE YOUR STATE MANAGEMENT TECHNIQUE TO GET
          // AND CHANGE INDEX OF NAVIGATION BAR
          },
          ),

        ]

      )

    );

  }
}
