import 'package:flutter/material.dart';
import 'package:mealzz/Screens/category_meal.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem({this.color, this.title, this.id});

  void selectCategory(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
          builder: (_) => CategoryMealsScreen(
                categoryId: id,
                categoryTitle: title,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
