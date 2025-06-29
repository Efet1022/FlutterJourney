import 'package:day_5_homework/calendar.dart';
import 'package:day_5_homework/homepage.dart';
import 'package:flutter/material.dart';

class TodayTask extends StatefulWidget {
  const TodayTask({super.key});

  @override
  State<TodayTask> createState() => _TodayTaskState();
}

class _TodayTaskState extends State<TodayTask> {
  List<String> personImages = [
  "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg",
  "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg",
  "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg",
  "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg"];
  @override
  Widget build(BuildContext context) {
        return Scaffold(
        bottomNavigationBar: SafeArea(child: 
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.all(10),
          height: 70,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius:0.2,
                blurRadius: 0.3,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(40)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
                  });
                },
                child: Icon(Icons.home,size: 32,)),
              Icon(Icons.search,size: 32,),
              Icon(Icons.check_box_outlined,size: 32,),
              Icon(Icons.notifications,size: 32,),
              CircleAvatar(backgroundImage:NetworkImage("https://images.pexels.com/photos/774095/pexels-photo-774095.jpeg"),radius: 18,)
            ],
          ),
        ),
        ),
      body: SafeArea(
        child: Column(
          children: [
            Container( //Upper bar start
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white30,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homepage()));
                        });
                      },
                      child: Icon(
                        Icons.arrow_left_outlined),
                    ),
                      ),
                  Text("Today task"),
                  Icon(Icons.pending)
                ],
              ),
            ), //Upper bar finish
            Padding( //Title start
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Text("UX Design for MONS calender",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ), //Title finish
            Row( //Circle Avatar Username start
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text("Created by"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("Username",style: TextStyle(fontWeight: FontWeight.bold),),
                )
              ],
            ), //Circle Avatar Username finish
            Padding( //Text start
              padding: const EdgeInsets.all(10),
              child: Text("In publishing and graphic design,Lorem ipsum is a placeholder.The point of using Lorom Ipsum is that it has a more-or-less normal distribution of letters."),//Text finish
            ), 
            Padding( //Oct 25 start
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(Icons.flag,color: Colors.red,),
                  Text("Oct 25, 2025",style: TextStyle(fontSize: 15),)
                ],
              ),
            ), //Oct 25 finish        
            Padding( //Elevated Buttons start
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  ElevatedButton(onPressed: (){}, 
                  child: Text("High",
                  style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white
                    ),),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){}, 
                  child: Text("5 Scare",
                  style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 147, 110, 211),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text("stop starting,start finishing")
                ],
              ),
            ), //Elevated Buttons finish        
            Padding( //Circle Avatar start
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Row(
                children: [
                  Align_avatar(personImages: personImages),
                ],
              ),
            ), //Cricle Avatar finish
            Padding( //Subtask start
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                children: [
                  Text("Subtask",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ), //Subtask finish
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarPage()));
                });
              },
              child: Container( 
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                height: 100,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(166, 251, 242, 1),
                  borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("UX Design for MONS calender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                          Icon(Icons.flag,color: const Color.fromARGB(255, 120, 119, 119),),
                          Text("6 hours")
                        ],),
                      ],
                    ),
                    Icon(Icons.check_box_outline_blank)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarPage()));
                });
              },
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                height: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 129, 163, 248),
                  borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("UX Design for MONS calender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                          Icon(Icons.flag,color: const Color.fromARGB(255, 120, 119, 119),),
                          Text("6 hours")
                        ],),
                      ],
                    ),
                    Icon(Icons.check_box_outline_blank)
                  ],
                ),
              ),
            ),       
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5,color: Colors.grey)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add,size: 15,),
                      Text("Add subtask",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}