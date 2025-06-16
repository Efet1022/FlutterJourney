import 'package:flutter/material.dart';

void main() {
  runApp(const Material());
}

class Material extends StatelessWidget {
  const Material({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaff(),
    );
  }
}

class Scaff extends StatelessWidget {
  const Scaff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Homework 3"),
        foregroundColor: Colors.black,
      ),
      body: Containers(),
    );
  }
}

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 70,
                  color: Colors.grey,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stories(myimage: "https://images.pexels.com/photos/169647/pexels-photo-169647.jpeg?cs=srgb&dl=pexels-peng-liu-45946-169647.jpg&fm=jpg"),
                        Stories(myimage: "https://t4.ftcdn.net/jpg/02/83/83/93/360_F_283839302_yt6JIsE96Pj4PydFDcBNKDUnuSpYB9h0.jpg"),
                        Stories(myimage: "https://t4.ftcdn.net/jpg/03/21/49/17/360_F_321491746_tJimdq0ZS7F6wGKpaGOeL7EQjcdlaeqK.jpg"),
                        Stories(myimage: "https://t4.ftcdn.net/jpg/01/81/07/91/360_F_181079136_irl2A25Clc5Bi2Lwa3Q9kJvF0RlFv8tU.jpg"),
                        Stories(myimage: "https://st2.depositphotos.com/1006832/8357/i/450/depositphotos_83578234-stock-photo-open-space-and-skyscrapers-under.jpg"),
                        Stories(myimage: "https://cdn.pixabay.com/photo/2021/05/29/03/00/beach-6292382_1280.jpg"),
                        Stories(myimage: "https://static.vecteezy.com/system/resources/thumbnails/027/104/127/small/cheering-crowd-illuminated-by-vibrant-stage-lights-at-concert-photo.jpg"),
                        Stories(myimage: "https://cdn.pixabay.com/photo/2019/12/04/05/17/band-4671748_1280.jpg"),
                        Stories(myimage: "https://static.vecteezy.com/system/resources/thumbnails/037/236/579/small/ai-generated-beautuful-fast-food-background-with-copy-space-free-photo.jpg"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Boxes(),
            ],
          ),
        ],
      ),
    );
  }
}

class Stories extends StatelessWidget {
  final String myimage;
  const Stories({required this.myimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.red,
        image: DecorationImage(image: NetworkImage(myimage),fit: BoxFit.cover,)
      ),
    );
  }
}

class Boxes extends StatelessWidget {
  const Boxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 250,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all()
          ),
          child: Column(
            children: [
              Container(
                height: 205,
                width: 350,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/5/52/Cristiano_Ronaldo_%2835480124482%29.jpg"),fit: BoxFit.cover))),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Icon(Icons.favorite,),
                  ),
                  Text("306 bin",style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: Icon(Icons.comment),
                  ),
                  Text("12576",style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(Icons.share),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Icon(Icons.download),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 250,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all()
          ),
          child: Column(
            children: [
              Container(
                height: 205,
                width: 350,
                child: Image.asset("images/city1.jpg",fit: BoxFit.fill)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Icon(Icons.favorite,),
                  ),
                  Text("15 bin",style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: Icon(Icons.comment),
                  ),
                  Text("1256",style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(Icons.share),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Icon(Icons.download),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 250,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all()
          ),
          child: Column(
            children: [
              Container(
                height: 205,
                width: 350,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://www.shutterstock.com/image-photo/50-cent-shares-headlining-bill-260nw-476657722.jpg"),fit: BoxFit.cover))),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Icon(Icons.favorite,),
                  ),
                  Text("152 bin",style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10),
                    child: Icon(Icons.comment),
                  ),
                  Text("8216",style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(Icons.share),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Icon(Icons.download),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}