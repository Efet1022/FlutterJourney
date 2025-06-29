import 'package:day_5_homework/today_task.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg",),
                  ),
                  SizedBox(width: 10,),
                  Text("Hello,",style: TextStyle(fontSize: 20),),
                  Text("Username",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("4 New",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(width: 5,),
                  Text("tasks today",style: TextStyle(fontSize: 15),)
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TodayTask()));
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 247, 223, 136),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("UX Design for MONS Calender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Row(
                                children: [
                                  Icon(Icons.flag,color: Colors.red,),
                                  Text("Oct 25, 2025",style: TextStyle(fontSize: 15),)
                                ],
                              ),
                              Text("n publishing and graphic dsfgw n loren psum is a place holder"),
                              Row(
                                children: [
                                  ElevatedButton(onPressed: (){}, child: Text("High",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    foregroundColor: Colors.white
                                  ),),
                                  SizedBox(width: 10,),
                                  ElevatedButton(onPressed: (){}, child: Text("5 Scare",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 147, 110, 211),
                                    foregroundColor: Colors.white,
                                  ),),
                                ],
                              ),
                              Align_avatar(personImages: personImages)
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TodayTask()));
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 149, 203, 248),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("UX Design for MONS Calender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Row(
                                children: [
                                  Icon(Icons.flag,color: Colors.red,),
                                  Text("Oct 25, 2025",style: TextStyle(fontSize: 15),)
                                ],
                              ),
                              Text("n publishing and graphic dsfgw n loren psum is a place holder"),
                              Row(
                                children: [
                                  ElevatedButton(onPressed: (){}, child: Text("High",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    foregroundColor: Colors.white
                                  ),),
                                  SizedBox(width: 10,),
                                  ElevatedButton(onPressed: (){}, child: Text("5 Scare",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 147, 110, 211),
                                    foregroundColor: Colors.white,
                                  ),)
                                ],
                              ),
                              Row(
                                children: [
                                  for(int i = 0;i < personImages.length; i++)
                                  Align(
                                    widthFactor: 0.5,
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundImage: NetworkImage(personImages[i]),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Text("+ 4")
                                ],
                              )
                            ],
                          ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text("To",style: TextStyle(fontSize: 17),),
                  SizedBox(width: 5,),
                  Text("Do",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: const Color.fromARGB(255, 157, 197, 193),
                    child: Text("3"),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        padding: EdgeInsets.all(18),
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 253, 211, 225),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Urgent",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                            Text("UX Design for calender",style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.flag,color: Colors.red,),
                                Text("Oct 25, 2025")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 180,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 152, 255, 238),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Urgent",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                            Text("UX Design for calender",style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.flag,color: Colors.red,),
                                Text("Oct 25, 2025")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 180,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 240, 213, 253),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Urgent",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                            Text("UX Design for calender",style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.flag,color: Colors.red,),
                                Text("Oct 25, 2025")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text("In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  Text("Progress",style: TextStyle(fontSize: 17),),
                  SizedBox(width: 5,),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: const Color.fromARGB(255, 237, 205, 119),
                    child: Text("3"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Align_avatar extends StatelessWidget {
  const Align_avatar({
    super.key,
    required this.personImages,
  });

  final List<String> personImages;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(int i = 0;i < personImages.length; i++)
        Align(
          widthFactor: 0.5,
          child: CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(personImages[i]),
          ),
        ),
        SizedBox(width: 15,),
        Text("+ 4")
      ],
    );
  }
}