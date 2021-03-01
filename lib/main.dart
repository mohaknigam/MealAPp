import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealzz/Screens/categories_screen.dart';
import 'package:mealzz/Screens/category_meal_screen.dart';
import 'package:mealzz/Screens/meal_detail_screen.dart';
import 'package:mealzz/Widgets/meal_item.dart';

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
      initialRoute: CategoriesScreen.routeName,
      routes: {
        CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
