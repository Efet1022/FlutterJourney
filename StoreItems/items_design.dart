import 'package:flutter/material.dart';

class ItemsDesign extends StatefulWidget {
  final String img;
  final String name;
  final String time;
  final String ticket;
  final String buyticket;
  final int percentage;
  const ItemsDesign({required this.img, required this.name ,required this.time, required this.ticket, required this.buyticket,required this.percentage});

  @override
  State<ItemsDesign> createState() => _ItemsDesignState();
}

class _ItemsDesignState extends State<ItemsDesign> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black38,width: 1),
        borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 140,
              child: Image.asset(widget.img,fit: BoxFit.fill,)),
            SizedBox(height: 3),
            Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold),),
            Container(
              height: 30,
              width: 80,
              margin: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text("1€",textAlign: TextAlign.center,style: TextStyle(color: const Color.fromARGB(255, 95, 94, 94),fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.grey,
              child: Row(
                children: [
                  Expanded(
                    flex: 100 - widget.percentage,
                    child: Container(
                      height: 20,
                      width: 180,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text("%${100 - widget.percentage}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 11),textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: widget.percentage,
                    child: Container(
                    color: Colors.white,
                  ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 5,),
                        Text("Remaining Time"),
                        Spacer(),
                        Text(widget.time,style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,)
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 5,),
                        Text("Total Ticket"),
                        Spacer(),
                        Text(widget.ticket,style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isClick = !isClick;
                          if(!isClick){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successful!"),duration: Duration(seconds: 1),));
                          }
                        });
                        
                      },
                      child: Container(
                        height: 50,
                        width: 180,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(isClick ? widget.buyticket : "Return Ticket",
                          textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),color: isClick ? Colors.green : Colors.red
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
        
  }
}