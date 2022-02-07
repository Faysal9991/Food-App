import 'package:flutter/cupertino.dart';

class FoodDetailsModel{
  late String foodname;
  late String foodimage;



  FoodDetailsModel(this.foodname, this.foodimage);
}
class RecomendfoddetailsModel{
  late String foodname;
  late String foodimage;
  late int foodprice;
  late String detls;

  RecomendfoddetailsModel(
      this.foodname, this.foodimage, this.foodprice, this.detls);
}