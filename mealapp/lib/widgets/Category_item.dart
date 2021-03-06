import 'package:flutter/material.dart';

class CategorItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategorItem(this.id,this.title, this.color);

  void selectCategory(BuildContext context){
    Navigator.of(context).pushNamed('./categories', arguments: {'id': id, 'title': title}
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
          child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(gradient: LinearGradient(colors: [color.withOpacity(0.7),color,],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}