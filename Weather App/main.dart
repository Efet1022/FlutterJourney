import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row( //Üst bar
                children: [
                  SizedBox(height: 150,),
                  Expanded(
                    child: Container(
                      height: 30,
                      
                      child: Row(
                        children: [
                          SizedBox(width: 30,),
                          Image.asset("images/konum.png"),
                          SizedBox(width: 20,),
                          Text("Fortaleza",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          SizedBox(width: 30,),
                          Image.asset("images/alt_ok.png"),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Image.asset("images/bildirim.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ), //Üst bar bitiş
              
              Row( //Hava durumu resim başlangıç
                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      
                      child: Image.asset("images/hava_resim.png"),
                    ),
                  )
                ],
              ), //Hava durumu resim bitiş
          
              Row( //Derece ve küçük yazılar başlangıç
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("28°",style: TextStyle(color: Colors.white,fontSize: 40),),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Precipations",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Max.:31°Max.:25°",style: TextStyle(color: Colors.white),)
                            ],
                          )
                        ],
                      ),
                    )),
                ],
              ), //Derece ve küçük yazılar bitiş
            
              SizedBox(height: 10,),
          
              Row( //Derece altı container başlangıç
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 1, 85, 155),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Image.asset("images/yagmur.png"),
                          SizedBox(width: 5,),
                          Text("6%",style: TextStyle(color: Colors.white),),
                          SizedBox(width: 80,),
                          Image.asset("images/derece_icon.png"),
                          SizedBox(width: 5,),
                          Text("90%",style: TextStyle(color: Colors.white),),
                          Spacer(),
                          Image.asset("images/ruzgar_hiz.png"),
                          SizedBox(width: 5,),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("19 km/h",style: TextStyle(color: Colors.white),),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ), //Derece altı container bitiş
          
              SizedBox(height: 10,),
              Row( //Büyük Container başlangıç
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 1, 85, 155),
                      ),
                      height: 300,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                                child: Text("Today",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                child: Text("Mar,9",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                              
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row( //Dereceler başlangıç
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("29°",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("26°",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("23°",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("24°",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ), //Dereceler bitiş
                          SizedBox(height: 20,),
                          Row( //Hava durumu iconları başlangıç
                            children: [
                              Expanded(
                                child: Container(
                                  
                                  height: 100,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 80,
                                        child: Image.asset("images/gunesli.png")),
                                      Container(
                                        width: 100,
                                        height: 80,
                                        child: Image.asset("images/gunesli.png")),
                                      Container(
                                        width: 100,
                                        height: 80,
                                        child: Image.asset("images/gunesli.png")),
                                      Container(
                                        width: 90,
                                        height: 80,
                                        child: Image.asset("images/gunesli.png"))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ), //Hava durumu ikonları bitiş
                        
                          Row( //Saatlar başlangıç
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("15:00",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                              Text("16:00",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                              Text("17:00",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                              Text("18:00",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                              ],
                          ), //Saatler bitiş
                        ],
                      ),
                    ),
                  )
                ],
              ), //Büyük container bitiş

              SizedBox(height: 10,),
              Row( //En büyük container
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 1, 85, 155),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: 530,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("Next Forecast",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset("images/takvim.png"),
                              ),
                              
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Monday",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: 70,),
                              Image.asset("images/gunes_yagmur.png"),
                              Spacer(),
                              Text("13°C",style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text("10°C",style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 10,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Tuesday",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: 70,),
                              Image.asset("images/gunes_yagmur.png"),
                              Spacer(),
                              Text("13°C",style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text("10°C",style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 10,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Wednesday",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: 40,),
                              Image.asset("images/gunes_yagmur.png"),
                              Spacer(),
                              Text("13°C",style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text("10°C",style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 10,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Thursday",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: 60,),
                              Image.asset("images/gunes_yagmur.png"),
                              Spacer(),
                              Text("13°C",style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text("10°C",style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 10,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Friday",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: 90,),
                              Image.asset("images/gunes_yagmur.png"),
                              Spacer(),
                              Text("13°C",style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text("10°C",style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 10,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Saturday",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: 65,),
                              Image.asset("images/gunes_yagmur.png"),
                              Spacer(),
                              Text("13°C",style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text("10°C",style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 10,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Sunday",style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: 80,),
                              Image.asset("images/gunes_yagmur.png"),
                              Spacer(),
                              Text("19°C",style: TextStyle(color: Colors.white),),
                              SizedBox(width: 10,),
                              Text("12°C",style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 10,)
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
