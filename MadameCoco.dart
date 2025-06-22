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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "Kategoriler"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favoriler"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menü"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profil"),
        ]),
        appBar: AppBar(
          title: Expanded(
            child: Row(
              children: [
                Spacer(),
                Text("MADAME COCO",style: TextStyle(fontSize: 20),),
                Spacer(),
                Icon(Icons.shopping_bag_outlined)
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(Icons.search),
                            Text("Ürün veya özellik arayın"),
                            Spacer(),
                            Icon(Icons.qr_code)
                          ],
                        ),
                      ),
                    ),
                  ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text("%80+%10 İNDİRİM",style: TextStyle(fontSize: 15),),
                        )
                      ],
                    ),
                  ),
                  Divider(color: const Color.fromARGB(255, 170, 210, 242),thickness: 5,),
                  Container(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("%80 + %10 İNDİRİM",style: TextStyle(fontSize: 24,letterSpacing: 3),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 195,
                              child: Image.network("https://productimages.hepsiburada.net/s/544/375-375/110000604174762.jpg"),
                              ),
                              Row(
                                children: [
                                  Text("Tencere, Tava & Sahan Setleri",style: TextStyle(fontSize: 12),),
                                  Icon(Icons.arrow_right_alt_outlined)
                                ],
                              )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 195,
                              child: Image.network("https://www.jumbo.com.tr/cdn/shop/files/000001000022829001.jpg",),
                              ),
                              Row(
                                children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical:3),
                                  child: Text("Çatal, Kaşık ve Bıçak Setleri",style: TextStyle(fontSize: 12,)),
                                ),
                                Icon(Icons.arrow_right_alt)
                              ],
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: 410,
                                child: Image.network("https://witcdn.aryildiz.com/royal-queen-topkapi-60-parca-12-kisilik-yemek-takimi-60026-12-kisilik-yemek-takimlari-aryildiz-44096-77-B.jpg",fit: BoxFit.cover,),
                                ),
                                Container(
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text("Yemek Takımları",style: TextStyle(fontSize: 12),),
                                      ),
                                      Container(
                                        child: Icon(Icons.arrow_right_alt))
                                    ],
                                  ),
                                )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 300,
                          color: Colors.white54,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                                    child: Text("Pikeler",style: TextStyle(fontSize: 24),),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 15),
                                    child: Text("Tümünü Gör",style: TextStyle(fontSize: 12),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Icon(Icons.arrow_right_alt),
                                  ),
                                  SizedBox(width: 5,)
                                ],
                                
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 135,
                                    child: Image.network("https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/53932/uploads/urunresimleri/buyuk/cift-kisilik-pike-takimi-inci-kapicino-90d9-4.jpg",fit: BoxFit.fill,),
                                    ),
                                    Container(
                                    height: 200,
                                    width: 135,
                                    child: Image.network("https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/53932/uploads/urunresimleri/buyuk/cift-kisilik-pike-takimi-inci-kapicino-90d9-4.jpg",fit: BoxFit.fill,),
                                    ),Container(
                                    height: 200,
                                    width: 135,
                                    child: Image.network("https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/53932/uploads/urunresimleri/buyuk/cift-kisilik-pike-takimi-inci-kapicino-90d9-4.jpg",fit: BoxFit.fill,),
                                    )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row( //Popüler Kategoriler Başlangıç
                    children: [
                      Expanded(
                        child: Container(
                          height: 660,
                          
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 60,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text("POPÜLER KATEGORİLER",style: TextStyle(fontSize: 25,letterSpacing: 3),))),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 200,
                                    
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 120,
                                              child: Image.network("https://muzaffermobilya.com/wp-content/uploads/2022/02/urun-quatro-yatak-odasi-takimi-02.jpg",fit: BoxFit.fill,),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Yatak Odası"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 120,
                                              
                                              child: Image.network("https://cdn.karaca.com/image/cdndata/1/202310/153.09.01.5217/8683650217022-125.jpg",fit: BoxFit.fill,),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Banyo"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 120,
                                              
                                              child: Image.network("https://witcdn.aryildiz.com/aryildiz-flipper-siyah-cam-tencere-seti-tencere-seti-aryildiz-45865-10-B.jpg",fit: BoxFit.fill,),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Mutfak"),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 200,
                                    
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 120,
                                              child: Image.network("https://ce1999.a-cdn.akinoncloud.com/products/2024/04/23/321905/ab675f46-c936-4771-96a3-71c1ebb6c8c9_size500x500_cropCenter.jpg",fit: BoxFit.fill,),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Sofra"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 120,
                                              
                                              child: Image.network("https://storage.kolaysiparis.com.tr/ks-prod/images/shop/66360dfd34d3e/product/674ae23c471a5/MLdUIUNUfVUjQKFj3MonD75H3HNWOiL6PPBObrhr.jpg",fit: BoxFit.fill,),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Halı&Kilim"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 120,
                                              
                                              child: Image.network("https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/39208/uploads/urunresimleri/buyuk/delhi-eskitme-ayakli-abajur-acik-kahve-2caebd.jpg",fit: BoxFit.fill,),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Dekorasyon"),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 200,
                                    
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 120,
                                              child: Image.network("https://www.shopsa.com.tr/upload/newsContent/Adsz_tasarm__20230110T094123.265.jpg",fit: BoxFit.fill,),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Kozmetik"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 120,
                                              
                                              child: Image.network("https://cdn03.ciceksepeti.com/cicek/kcm93803307-1/XL/dekoratif-kare-hasir-sepet-duzenleyici-hediye-kutu-32x32x31cm-kcm93803307-1-175ede30902144dd8e23b7e794c81958.jpg",fit: BoxFit.fill,),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Ev&Yaşam"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 120,
                                              child: Image.network("https://berrakmobilya.com/wp-content/uploads/2023/10/Berrak-Kare-Orta-Sehpa.jpg",fit: BoxFit.fill,),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Text("Yeni Ürünler"),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ), //Popüler Kategoriler Btiş
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}