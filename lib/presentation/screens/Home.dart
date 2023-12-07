import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
String title="flutter tip";
String desc="there is a new tip in flutter there is a new tip in flutter there is a new tip in flutter";
String time="May 2/2/2002";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notes"
        ),
        actions: [
          Icon(Icons.search),
        ],
      ),
        body: ListView.builder(
          
            itemBuilder: (context, index) {
              return  Note(title: title, desc: desc, time: time);
            },
            scrollDirection: Axis.vertical,
            itemCount: 10,
           ),

    );
  }
}

class Note extends StatelessWidget {
  const Note({
    super.key,
    required this.title,
    required this.desc,
    required this.time,
  });

  final String title;
  final String desc;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.yellow,
            ),
             child: Padding(
               padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 20,bottom: 10),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("$title",style: TextStyle(
                           color: Colors.black,
                           fontSize: 25,
                           fontWeight: FontWeight.bold),),
                       IconButton(onPressed: (){}, icon:  Icon(Icons.delete,size: 30,)),

                     ],
                   ),
                   SizedBox(height: 10,),
                   Align(
                       alignment: Alignment.centerLeft,
                       child: Text("$desc",style: TextStyle(
                           color: Colors.blueGrey,
                           fontSize: 15,
                           fontWeight: FontWeight.bold),)),
                   SizedBox(height: 20,),
                   Align(
                       alignment: Alignment.bottomRight,
                       child: Text("$time",style: TextStyle(
                           color: Colors.black,
                           fontSize: 15,
                           fontWeight: FontWeight.bold),)),
                 ],
               ),
             ),
          ),
        ],
      ),
    );
  }
}
