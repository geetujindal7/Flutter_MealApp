import 'package:flutter/material.dart';
import '../widgets/Category_item.dart';
import '../dummy_data.dart';

class CatogoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES.map((catData) =>
        CategorItem(catData.id, catData.title, catData.color),
    ).toList(),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
    childAspectRatio: 3/2,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20,
    ),
    );
  }
}