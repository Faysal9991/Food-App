import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Colors.black.withOpacity(0.07),
      body: Stack(
        children: [
          Container(

            decoration: BoxDecoration(
                image: DecorationImage
                  (image: AssetImage
                  ("assets/images/fstlog.jpg"),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40,right: 120),
                  child: Text.rich(
                    TextSpan(
                        text: "Food",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle
                            (color: Colors.red, letterSpacing: .5, fontSize:40,fontWeight: FontWeight.bold
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: " Bangladesh",
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(color: Color(0xff2d9a2d), letterSpacing: .5, fontSize:25,fontWeight: FontWeight.bold
                              ),
                            ),

                          ),
                        ]


                    ),


                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text("wellcome"
                        , style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green),
                      ),
                      SizedBox(height: 17,),
                      Text(
                        "খাদ্য শরীর এর জন্য প্রয়োজনীয় জ্বালানী হতে পারে কিন্তু\n ভালো খাদ্য হলো আত্মার জন্য জ্বালানী স্বরূপ।",
                        style: TextStyle(color: Colors.red,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                TextButton(

                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()
                      )
                      );

                    },
                    child: Container(
                      height: 50,

                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(25),color: Colors.green,

                      ),
                      child:
                      Center(
                        child: Text("Try now",style:
                        TextStyle(color: Color(0xfffdfefe),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                    )
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}