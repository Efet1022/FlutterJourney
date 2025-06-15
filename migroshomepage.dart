import 'package:flutter/material.dart';

void main() {
  runApp(const First());
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Second(
      ),
    );
  }
}

class Second extends StatelessWidget {
  
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> MyImages = [
    "migrosbanner.png"
  ];
  final ImageFolder = "images/";
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(ImageFolder + MyImages[0],
        fit: BoxFit.contain, width: 200,),
        actions: [Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 213, 211, 211),
              borderRadius: BorderRadius.circular(10)
            ),
            height: 40,
            width: 40,
            child: Icon(
              Icons.notifications,
              color: Colors.black,),
              ),
        )],
      ),
      body: Ads(
        
      ),
      );
  }
}

class Ads extends StatelessWidget {
  const Ads({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 150,
                width: 300,
                child:Icon(
                  Icons.ads_click_rounded,
                  size: 100,),
              ),
            ),
        ],),
        Divider(),
        Layout(),
      ],
    );
  }
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 40,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search,size: 25,),
                  SizedBox(width: 15,),
                  Text("Ürün,yemek veya hizmet ara",style: TextStyle(fontSize: 15),),
                  SizedBox(width: 110,),
                  Icon(Icons.mic_rounded,)
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Categories(name: "MIGROS SANALMARKET", icons: Icon(Icons.car_rental_outlined,size: 40,)),
            Categories(name: "MIGROS HEMEN", icons: Icon(Icons.motorcycle,size: 40,)),
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Categories(name: "MIGROS YEMEK", icons: Icon(Icons.food_bank_rounded,size: 40,)),
            Categories(name: "TAZE DIREKT", icons: Icon(Icons.apple,size: 40,))
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Categories(name: "macroonline", icons: Icon(Icons.shopping_bag,size: 40,)),
            Categories(name: "mion", icons: Icon(Icons.cleaning_services,size: 40,))
          ],
        ),
        SizedBox(height: 12,),
        BottomContainers(),
      ],
    );
  }
}

class Categories extends StatelessWidget {
  final String name;
  final Icon icons;
  const Categories({required this.name, required this.icons,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 135,
          width: 185,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 125,
                    padding: EdgeInsets.all(10),
                    child: Text(name,style: TextStyle(color: Colors.orange,fontSize: 12,fontWeight: FontWeight.bold),),
                    ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: icons
                    )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomContainers extends StatelessWidget {
  const BottomContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("MIGROS PETIM",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 8),),
                )),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.pets,size: 40,color: Colors.orange,),
                )),
            ],
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("MIGROS EKSTRA",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 8),),
                )),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.tv,size: 40,color: Colors.orange,),
                )),
            ],
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Müthiş Çekiliş",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold,color: Colors.orange),),
                )),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.smart_toy,size: 40,color: Colors.orange,),
                )),
            ],
          ),          
        )
      ],
    );
  }
}
