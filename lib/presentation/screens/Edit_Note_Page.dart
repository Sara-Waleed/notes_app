import 'package:flutter/material.dart';
import 'package:notes_app/domain/shared_components/custom_TextField.dart';

import '../../domain/shared_components/BottomSheet.dart';

class EditPage extends StatelessWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
                child: Icon(Icons.check)),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 20),
        child: Column(

          children: [

            BottomSheetTextField(text: 'Title',maxlin: 1),
            SizedBox(height: 10,),
            BottomSheetTextField(text: "content",maxlin: 5),
          ],
        ),
      ),
    );
  }
}
