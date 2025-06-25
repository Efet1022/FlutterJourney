import 'package:flutter/material.dart';
import 'package:model_practice/models/Foods.dart';
import 'package:model_practice/views/Food_card_details.dart';

class FoodCards extends StatefulWidget {
  final Foods food;
  const FoodCards({required this.food});

  @override
  State<FoodCards> createState() => _FoodCardsState();
}

class _FoodCardsState extends State<FoodCards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> FoodCardDetails(food: widget.food)));
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.food.imageUrl),
        ),
        title: Text(widget.food.names),
        subtitle: Text(widget.food.price),
        trailing: Icon(Icons.food_bank),
      ),
    );
  }
}