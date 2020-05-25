import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
// final String categoryId;
// final String categoryTitle;

// CategoryMealScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final filtered = DUMMY_MEALS.where((meal){
      return meal.categoriesId.contains(categoryId);

    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: ListView.builder(
        itemBuilder: (ctx, index){
          return MealItem(
            id: filtered[index].id,
            title: filtered[index].title,
           imageURL: filtered[index].imageURL, 
           duration: filtered[index].duration, 
           affordability: filtered[index].affordability,
            complexity: filtered[index].complexity
          ,);
        }, itemCount: filtered.length,
      ), 
      
      );
  }
}