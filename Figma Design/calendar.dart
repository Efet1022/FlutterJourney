import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Padding(
      padding: const EdgeInsets.only(left: 10,top: 30,right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row( //Date start
              children: [
                Text("Sep,2025",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(width: 5,),
                Container(
                  color: const Color.fromARGB(255, 214, 214, 214),
                  child: Icon(Icons.arrow_downward_outlined))
              ],
            ), //Date finish
            Padding( //Days start
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("M"),
                  Text("T"),
                  Text("W"),
                  Text("T"),
                  Text("F"),
                  Text("S"),
                  Text("S"),
                ],
              ),
            ), //Days finish
            Padding( //Date numbers start
              padding: const EdgeInsets.only(top: 20,left: 8,right: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("17",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("18",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("19",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("20",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("21",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("22",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("23",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ), //Date numbers finish
            
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 5),
              child: Row(
                children: [
                  Text("09:00"),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                          width: 354,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 213, 108),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Text("Project Discussion",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("09:00AM - 10:00AM")
                            ],
                          )
                        ],
                      ),
                    ),
                    
                        ]
                      ),
                      
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 5),
              child: Row(
                children: [
                  Text("10:00"),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(height: 0.5,thickness: 0.5,color: Colors.grey,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 5),
              child: Row(
                children: [
                  Text("11:00"),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(height: 0.5,thickness: 0.5,color: Colors.grey,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 5),
              child: Row(
                children: [
                  Text("12:00"),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(height: 0.5,thickness: 0.5,color: Colors.grey,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 5),
              child: Row(
                children: [
                  Text("13:30"),
                  SizedBox(width: 10,),
                  Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                          width: 354,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 220, 168, 249),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lunch time",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("09:00AM - 10:00AM")
                            ],
                          )
                        ],
                      ),
                    ),
                        ]
                      ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 5),
              child: Row(
                children: [
                  Text("14:30"),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(height: 0.5,thickness: 0.5,color: Colors.grey,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 5),
              child: Row(
                children: [
                  Text("15:00"),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(height: 0.5,thickness: 0.5,color: Colors.grey,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 5),
              child: Row(
                children: [
                  Text("16:00"),
                  SizedBox(width: 10,),
                  Expanded(child: Divider(height: 0.5,thickness: 0.5,color: Colors.grey,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 5),
              child: Row(
                children: [
                  Text("17:00"),
                  SizedBox(width: 10,),
                  Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                          width: 354,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                      height: 80,
                      width: 250,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 151, 255, 164),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Team meating",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("09:00AM - 10:00AM")
                            ],
                          )
                        ],
                      ),
                    ),
                        ]
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}