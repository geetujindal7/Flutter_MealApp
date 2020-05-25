import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
final String title;
final String imageURL;
final int duration;
final Complexity complexity;
final Affordability affordability;

MealItem({this.id,this.title, this.imageURL, this.affordability, this.complexity, this.duration});

String get complexityText{
  switch(complexity){
    case Complexity.Simple:
      return 'Simple';
      break;
    case Complexity.Challenging:
      return 'Challenging';
      break;
    case Complexity.Hard:
      return 'Hard';
      break;
      default:
      return 'Unknown';
  }

}

String get affordabilityTest{
  switch(affordability){
    case Affordability.Affordable:
      return 'Affordable';
      break;
    case Affordability.Pricey:
      return 'Pricey';
      break;
    case Affordability.Luxurious:
      return 'Luxurious';
      break;
      default:
      return 'Unknown';
  }

}

void selectMeal(BuildContext context){
  
    Navigator.of(context).pushNamed('./meal', arguments: {'id': id });
    
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Stack(children: <Widget>[
              ClipRRect(borderRadius: BorderRadius.circular(15),
              child: Image.network(imageURL, height: 250, width: double.infinity, fit: BoxFit.cover,),
              ),
              Positioned(
                bottom: 20, 
                right: 10,

                child: Container(
                  width: 300,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                  ),
                ),
              )
          
              
          ],),
          Padding(padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            Row(children: <Widget>[
              Icon(Icons.schedule,),
              SizedBox(width: 6,),
              Text(duration.toString())

            ],),
            Row(children: <Widget>[
              Icon(Icons.work,),
              SizedBox(width: 6,),
              Text(complexityText),
          ],
          ),
          Row(children: <Widget>[
              Icon(Icons.attach_money,),
              SizedBox(width: 6,),
              Text(affordabilityTest),
          ],
          ),
          ],
          ),
      ),
        ],
    ),
      ),  
    );
  } 
}