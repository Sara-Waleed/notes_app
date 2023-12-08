import 'package:flutter/material.dart';
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
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed("EditPage");
      },
      child: Padding(
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
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),)),
                    SizedBox(height: 40,),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text("$time",style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),)),
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