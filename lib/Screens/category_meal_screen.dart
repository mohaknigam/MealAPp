import 'package:flutter/material.dart';
import 'file:///C:/Users/mohak/AndroidStudioProjects/mealzz/lib/models/dummy_data.dart';
import 'package:mealzz/Widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const categoryMealScreenRoute = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
