import 'package:flutter/material.dart';
import 'package:mealzz/Widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;

  FiltersScreen(this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: [
          IconButton(icon: Icon(Icons.save), onPressed: widget.saveFilters)
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(_glutenFree, 'Gluten-Free',
                    'Only inlcude gluten-free meals', (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                buildSwitchListTile(_lactoseFree, 'Lactose-Free',
                    'Only inlcude lactose-free meals', (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                }),
                buildSwitchListTile(_vegan, 'Vegan', 'Only inlcude vegan meals',
                    (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                }),
                buildSwitchListTile(
                    _vegetarian, 'Vegetarian', 'Only inlcude vegetarian meals',
                    (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SwitchListTile buildSwitchListTile(bool currentValue, String title,
      String description, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }
}
