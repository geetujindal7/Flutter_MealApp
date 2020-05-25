import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isGlutenFree = false;

    bool islactoseFree = false;

  bool isVegetarian = false;

  bool isVegan = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Your filters'),
    ),
    body: Column(children: <Widget>[
      Container(
        child: Text('You can choose your meal!!',
        style: Theme.of(context).textTheme.title,
        ),

      ),
      SwitchListTile(
      value: isGlutenFree, 
      onChanged: (newValue){
        setState(() {
          isGlutenFree = newValue;
        });
      }, 
      title: Text('Gluten-Free'), 
      subtitle: Text('Only include Gluten Free meals'),),

    SwitchListTile(
      value: isVegan, 
      onChanged: (newValue){
        setState(() {
          isVegan = newValue;
        });
      }, 
      title: Text('IsVegan'), 
      subtitle: Text('Only include Vegan meals'),),

      SwitchListTile(
      value: isVegetarian, 
      onChanged: (newValue){
        setState(() {
          isVegetarian = newValue;
        });
      }, 
      title: Text('Vegetarian'), 
      subtitle: Text('Only include Vegetarian meals'),),


      SwitchListTile(
      value: islactoseFree, 
      onChanged: (newValue){
        setState(() {
          islactoseFree = newValue;
        });
      }, 
      title: Text('Lactose-Free'), 
      subtitle: Text('Only include Lactose  Free meals'),),

      ],),
    );
    
  }
}