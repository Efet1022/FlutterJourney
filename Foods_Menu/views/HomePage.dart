import 'package:flutter/material.dart';
import 'package:model_practice/models/Foods.dart';
import 'package:model_practice/views/Food_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foods",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context,index){
        return FoodCards(food: foodList[index]);
      }),
    );
  }
}