import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
int val=0;

class FoodDetails extends StatefulWidget {
  String fName;
  String fImage;
  int fPrice;
  String fdetails;
   FoodDetails({Key? key,
   required this.fImage,
   required this.fName,
   required this.fPrice,
     required this.fdetails
   }) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(


      body:Stack(
        children: [

         Container(
           height: height*0.9,
           width: width,
           decoration: BoxDecoration(

             color: Colors.yellow
           ),
           child: Column(
             children: [
             Padding(
               padding:  EdgeInsets.only(top: height*0.06,right: width*0.02,left: width*0.02),
               child: Row(
                 children: [
                   InkWell(
                     onTap:  (){
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => HomePage()

                           ));
                     },
                     child: CircleAvatar(
                       radius: 20,
                       backgroundColor: Color(0xffFFFFFF),
                       child: Icon(Icons.arrow_back_ios_new,size: 28,color: Colors.red,),
                     ),
                   ),
                   Spacer(flex: 7,),
                   CircleAvatar(
                     radius: 20,
                     backgroundColor: Color(0xffFFFFFF),
                     child: Icon(Icons.favorite,size: 28,color: Colors.red,),
                   ),
                 ],
               ),),
             Text("Food Details",style: GoogleFonts.lato(fontSize: height*0.03,color: Colors.black),),
      Column(
        children: [
          CircleAvatar(radius: 68,backgroundColor: Colors.yellow,
            backgroundImage:AssetImage(widget.fImage,),) ,

        ],



             ) ,
           ]
           ),
         ),
          Positioned(
            top: height/3,

            child: Container(
              height: height*0.89,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffe5e8e8),
              ),
             child: Column(
               children: [
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:height*0.03,left: width*0.02 ),
                      child: Text(widget.fName,style: GoogleFonts.aBeeZee(fontSize: height*0.04,color: Colors.black)
                      ),
                    ),
                    Spacer(flex: 1,),
                    Padding(
                      padding:  EdgeInsets.only(top: height*0.05, right: width*0.07),
                      child: Row(
                        children: [
                          Text('\$',style: TextStyle(color: Colors.green,fontSize: height*0.025),),
                          Text(widget.fPrice.toString(),style: GoogleFonts.aBeeZee(fontSize: height*0.03,color: Colors.black)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                 Container(
                   height: height*0.05,
                   width: width*0.3,
                   decoration: BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(30),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       InkWell(
                           onTap:  (){
                             setState(() {
                               val--;
                             });
                           },
                           child: Icon( Icons.remove,size: height*0.04,)),
                       
                       Container(
                         height: height*0.09,
                         width: width*0.1,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           shape: BoxShape.circle
                         ),
                         child: Padding(
                           padding:  EdgeInsets.only(top: height*0.015,left: width*0.035),
                           child: Text(val.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         ),
                       ),
                       InkWell(
                           onTap:  (){
                             setState(() {
                               val++;
                             });
                           },
                           child: Icon(Icons.add,size: height*0.04,)),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(7.0),
                   child: Align(alignment: Alignment.topLeft,
                     child: Text(widget.fdetails,style: GoogleFonts.aBeeZee(fontSize: height*0.03,color: Colors.black)
                     ),
                   ),
                 ),
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: height*0.07,
                         width: width*0.7,
                         decoration: BoxDecoration(
                           color: Color(0xff3eb109),
                           borderRadius: BorderRadius.circular(25),
                       ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 50,top: 5),
                           child: Text("Add to cart",style: GoogleFonts.aleo(color: Colors.black,fontSize: height*0.04,),),
                         ),
                       ),
                     )
                   ],
                 )
               ],
             ),
            ),
          ),
          Container(

          )
        ],
      )


          
       
      
    );
  }
}
