import 'package:flutter/material.dart';

import '../constant/constsnts.dart';
import 'custom_TextField.dart';
class BottonSheet extends StatelessWidget {
  const BottonSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         children: [
           SizedBox(height: 15,),
           BottomSheetTextField(text: "Title",maxlin: 1),
           SizedBox(height: 10,),
           BottomSheetTextField(text: "Content",maxlin: 5,),
           SizedBox(height: 100,),
           Container(
             width: 250,
             child: TextButton(
                 style: TextButton.styleFrom(
                  backgroundColor: KprimaryColor,
                 ),
                 onPressed: (){},
                 child: Center(child: Text("Add",style: TextStyle(fontSize: 25),))),
           )
         ],
       ),
     ),
    );
  }
}

