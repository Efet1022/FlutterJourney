import 'package:flutter/material.dart';

class YatayListView extends StatefulWidget {
  const YatayListView({super.key});

  @override
  State<YatayListView> createState() => _YatayListViewState();
}

class _YatayListViewState extends State<YatayListView> {
  List<String> ilceler = ["Bağcılar","Bakırköy","Esenler","Başakşehir","Üsküdar","Beyoğlu","Kadıköy","GOP","Şile"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yatay Listview"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100, //height vermezsek listview dikeyde de bütün alanı kaplar.
            child: ListView.builder( //Otomatik olarak içinde scroll özelliği vardır
              itemCount: ilceler.length, //Miktar verilmezse uygulama patlar
              scrollDirection: Axis.horizontal, //Scroll yönünü belirliyor
              itemBuilder: (context,index){
                return Card(
                  child: SizedBox(
                    width: 100, //Card a bir genişlik vermiş olduk 0 olursa sadece yazı kadar olur
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(ilceler[index]),
                      ],
                    ),
                  ),
                );
            }),
          ),
        ],
      ),
    );
  }
}