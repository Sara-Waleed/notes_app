import 'package:flutter/material.dart';

import '../../domain/shared_components/BottomSheet.dart';
import '../../domain/shared_components/Note_Card.dart';
class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
String title="Flutter tip";
String desc="There is a new tip in flutter there is a new tip in flutter there is a new tip in flutter";
String time="May 2/2/2002";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
            "Notes"
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.search)),
          ),
        ],
      ),
        body: ListView.builder(

            itemBuilder: (context, index) {
              return  Note(title: title, desc: desc, time: time);
            },
            scrollDirection: Axis.vertical,
            itemCount: 10,
           ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
              context:context,
              builder: (context) {
                return BottonSheet();
              },);

        },
        child: Icon(Icons.add),
      ),

    );
  }
}



