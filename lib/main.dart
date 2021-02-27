import 'package:flutter/material.dart';
import 'package:mealzz/Screens/categories.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MealApp',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Categories(),
    );
  }
}
