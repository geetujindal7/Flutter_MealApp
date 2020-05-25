import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
     final categoryId = routeArgs['id'];
     final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == categoryId);
    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title),),
      body: SingleChildScrollView(
              child: Column(children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(selectedMeal.imageURL,
            fit: BoxFit.cover,
            ),

          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text('Ingredients', style: Theme.of(context).textTheme.title,),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 150,
            width: 300,
            child: ListView.builder(itemBuilder: (ctx, index) => Card(color: Theme.of(context).accentColor,
            child: Padding(padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), child: Text(selectedMeal.ingredients[index])), 
            ) ,
            itemCount: selectedMeal.ingredients.length,
            ),
          ),
           Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text('Steps', style: Theme.of(context).textTheme.title,),
          ),

          Container(
            decoration: BoxDecoration(color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 300,
            width: 300,
            child: ListView.builder(itemBuilder: (ctx, index) => ListTile(leading: CircleAvatar(child: Text('# ${(index + 1)}'),),
            title: Text(selectedMeal.steps[index]),),
            itemCount: selectedMeal.steps.length,
            
            
            

            ),
          )

        ],

        ),
      ),
      
      
    );
    
  }
}