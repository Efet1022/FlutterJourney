import 'package:flutter/material.dart';
import 'package:grid_view_kullanimi/main.dart';

class FoodDetay extends StatelessWidget {
  final String img;
  final String foods;
  const FoodDetay({required this.img,required this.foods});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foods),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Image.asset(img,fit: BoxFit.fill,),
            ),
            SizedBox(height: 30,),
            Text(foods,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
            }, child: Text("Geri Dön"))
          ],
        ),
      ),
    );
  }
}