import 'package:flutter/material.dart';
import 'package:mealapp/screens/settings_screen.dart';


class MainDrawer extends StatelessWidget {
  Widget builtListTile(String title, IconData icon, Function taphandler){
    return ListTile(leading: Icon(icon,
      size: 26,),
      title: Text(title, style: TextStyle(fontFamily: 'RobotoCondensed',
      fontSize: 24,
      fontWeight: FontWeight.bold),),
      onTap: taphandler,
    );

  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(height: 150,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        color: Theme.of(context).accentColor,
        child: Text('Cooking' ,
        style: TextStyle(fontWeight: FontWeight.w900,
        fontSize: 30,
        color: Theme.of(context).primaryColor),
        
        ), ),
      SizedBox(height: 20,),
      
      builtListTile('Meals', Icons.restaurant, 
      (){
        Navigator.of(context).pushNamed('/');
      }),
       builtListTile('Settings', Icons.settings,
       (){
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) =>
                  new SettingScreen())
  );
       }),
      ],),
      
    );
  }
}