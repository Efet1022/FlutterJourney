import 'package:flutter/material.dart';
import 'package:grid_view_kullanimi/food_detay.dart';

class GridViewKullanimi extends StatelessWidget {
  const GridViewKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridViewKullanimi"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Ornek2(),
    );
  }
}

class Ornek1 extends StatefulWidget {
  const Ornek1({super.key});

  @override
  State<Ornek1> createState() => _Ornek1State();
}

class _Ornek1State extends State<Ornek1> {
  List<String> yemekler = ["Yaprak Sarması","Karnıyarık","Izgara Kanat","Çerkes Tavuğu","Velibah","Kabin","Pasta Jımps","Cağ Kebabı","Mantı",];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: yemekler.length, //Ürün sayısını belirliyoruz.
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( //SliverGridDelegate ile başlamamız lazım.
        childAspectRatio: 2/1, //2 Genişlik 1 Yükseklik oluyor
        crossAxisCount: 2), itemBuilder: (context,index){
      return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(yemekler[index]),
        ],
      ),
    );
    });
  }
}


//Bir satırda 2 elemanı olan oranlaması 3/5 olan bir gridview oluşacak.
//Elemanları container olucak.Bunda gölge radius çerçeve olacak.
//Bu container ın bir arka plan resmi olucak.soluk olacak üzerinde de yemeğin adı yazıcak.
//Not eşit elemana ait yemek ve resim listeleri olmalı
class Ornek2 extends StatefulWidget {
  const Ornek2({super.key});

  @override
  State<Ornek2> createState() => _Ornek2State();
}

class _Ornek2State extends State<Ornek2> {
  List<String> foods = ["Kalamar","Karides","Meze","Burger","Patates","Pizza","Makarna","Lasagna","Pilav"];
  List<String> img = ["images/1.png","images/2.png","images/3.png","images/4.png","images/5.png","images/6.png","images/7.png","images/8.png","images/9.png"];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      childAspectRatio: 3/5,
      crossAxisCount: 2),itemCount: foods.length, itemBuilder: (context,index){
        return GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FoodDetay(img: img[index], foods: foods[index]))); //pushReplacement yapıldığında o sayfayı stackten kaldırır.Login sayfası gibi sayfalarda kullanılır.
            //Navigator.pop(context);
            //Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetay(img: img[index], foods: foods[index])));
           
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img[index],),fit: BoxFit.fill,opacity: 0.4),
              boxShadow: [BoxShadow(color: Colors.black54,blurRadius: 5)
              ],
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(foods[index],style: TextStyle(color: Colors.white,fontSize: 30),)
              ],
            ),
          ),
        );
    });
  }
}