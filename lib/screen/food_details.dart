import 'package:flutter/material.dart';
class FoodDetails extends StatefulWidget {
  String fName;
  String fImage;
  int fPrice;
   FoodDetails({Key? key,
   required this.fImage,
   required this.fName,
   required this.fPrice,
   }) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(widget.fName),
    );
  }
}
