import 'dart:math';
import 'package:flutter/material.dart';
import 'package:finance_app/colors.dart' as color;

class Transaction{
  String title;
  String amount;
  String date;
  IconData iconData;
  Color color;

  Transaction(
    this.title,
    this.amount,
    this.date,
    this.iconData,
    this.color,
  );
}

List<Transaction> transaction(){
  return [
    Transaction("Food", "\$450", "1 April 2023", Icons.fastfood_rounded, color.Colors.orangeColor),
    Transaction("Medicine", "\$4500", "2 April 2023", Icons.medical_information_rounded, color.Colors.greenColor),
    Transaction("Clothes", "\$45", "4 April 2023", Icons.shop, color.Colors.accentColor),
    Transaction("House", "\$45050", "5 April 2023", Icons.house_rounded, randomColor()),
    Transaction("Car Rental", "\$1650", "5 April 2023", Icons.car_rental_rounded, randomColor()),
  ];
}

Color randomColor(){
  return Color(Random().nextInt(0xFFFFFFFF)).withAlpha(0xFF);
}
