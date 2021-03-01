import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/mohak/AndroidStudioProjects/mealzz/lib/models/dummy_data.dart';
import 'file:///C:/Users/mohak/AndroidStudioProjects/mealzz/lib/Widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MealZzz'),
      ),
      body: GridView(
        padding: EdgeInsets.all(22),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((catData) {
          return CategoryItem(
            id: catData.id,
            color: catData.color,
            title: catData.title,
          );
        }).toList(),
      ),
    );
  }
}
