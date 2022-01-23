import 'package:flutter/cupertino.dart';

class FoodDetailsModel{
  late String foodname;
  late String foodimage;
  late int foodprice;

  FoodDetailsModel(this.foodname, this.foodimage, this.foodprice);
}
class FoodmenuModel{
  late List<String> foodmenulist;

  FoodmenuModel(this.foodmenulist);
}