import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealzz/Screens/categories.dart';
import 'package:mealzz/Screens/category_meal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MealApp',
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: GoogleFonts.ralewayTextTheme().copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: GoogleFonts.robotoCondensed(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        initialRoute: Categories.categoryScreenRoute,
        routes: {
          Categories.categoryScreenRoute: (ctx) => Categories(),
          CategoryMealsScreen.categoryMealScreenRoute: (ctx) =>
              CategoryMealsScreen(),
        });
  }
}
