import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealzz/Screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(
      String title, IconData icon, BuildContext context, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 26),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Meals',
            Icons.restaurant,
            context,
            () {
              Navigator.pushNamed(
                context,
                '/',
              );
            },
          ),
          buildListTile('Favourites', Icons.settings, context, () {
            Navigator.pushNamed(context, FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }
}
