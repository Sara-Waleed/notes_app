import 'package:flutter/material.dart';

import '../constant/constsnts.dart';
class BottomSheetTextField extends StatelessWidget {
  const BottomSheetTextField({
    super.key,
    required this.text,
    required this.maxlin,
    this.onsaved
  });
  final String text;
  final int maxlin;
  final  Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      maxLines: maxlin,
      validator: (value){
        if(value?.isEmpty ?? true){
          return "Field is required ";
        }
        else{
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: "$text",
        hintStyle: TextStyle(
          color: KprimaryColor,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: KprimaryColor,
            )
        ),
        focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(
              color: KprimaryColor,
            )
        ),
        enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            )
        ),
      ),
    );
  }
}