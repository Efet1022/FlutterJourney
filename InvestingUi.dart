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
      home: Second(),
      
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        title: Text("Investing.com"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w800,),
      ),
      body: Ui(), 
    );
  }
}

class TopScroll extends StatelessWidget {
  const TopScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 25,
            color: Colors.black,
            child: Row(
              spacing: 30,
              children: [
                Text("En Popüler",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                Text("Endeksler", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                Text("Vadeli Endeksler",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                Text("Hisse Senetleri",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                Text("Emtia",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                Text("Döviz",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                Text("Kripto Para",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                Text("Tahviller",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                Text("ETF'ler",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                Text("Fonlar",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopScroll(), //Üstteki scrollbar
          SizedBox(
            child: Icon(Icons.ads_click,color: Colors.white,),
            height: 50,
          ),
          Divider(height: 5, color: Colors.grey,), //En baştaki gri ayırıcı
          Rows(name: "US 30", value: 42160.1,), //Bilgiler ve en altta ayırıcı
          Rows(name: "US 500", value: 5975.5),
          Rows(name: "Us Tech 100", value: 21637.6),
          Rows(name: "US 2000", value: 2103.7),
          Rows(name: "S&P 500 VIX", value: 21.07),
          Rows(name: "DAX 30", value: 23464.7),
          Rows(name: "FTSE 100", value: 8840.9),
          Rows(name: "CAC 40", value: 7658.4),
          Rows(name: "AEX", value: 919.4),
          Rows(name: "Euro Stoxx 50", value: 919.4),
          Rows(name: "FTSE/MIB 40", value: 39335),
          Rows(name: "IBEX 35", value: 13907),
          Rows(name: "BİST 30", value: 10402),
          Rows(name: "Nikkei 225", value: 37930),
          Rows(name: "Hang Seng 40", value: 23738.5),
          Rows(name: "Çin H-Shares", value: 8773),
          Rows(name: "S&P/ASX 2000", value: 8543.5),
          Rows(name: "Singapur MSCI", value: 404.75),
          Rows(name: "Nifty 50", value: 24740),
          Rows(name: "Çin A50", value: 13304),
          Rows(name: "iBovespa", value: 137372)
      
        ],
      ),
    );
  }
}

class Rows extends StatelessWidget {
  final String name;
  final double value;
  const Rows({
    required this.name,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(name,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text("$value",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(color: Colors.grey,)
      ],
    );
  }
}
