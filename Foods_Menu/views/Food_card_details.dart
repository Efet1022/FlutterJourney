import 'package:flutter/material.dart';
import 'package:model_practice/models/Foods.dart';

class FoodCardDetails extends StatelessWidget {
  final Foods food;
  const FoodCardDetails({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.names,style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset(food.imageUrl,fit: BoxFit.fill,),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text(food.names,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Spacer(),
                Text(food.price,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(width: 10,)
              ],
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(food.desc,style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }
}