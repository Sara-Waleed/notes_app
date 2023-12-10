import 'package:flutter/material.dart';
import 'package:notes_app/domain/shared_components/AddButton.dart';
import 'custom_TextField.dart';
class BottonSheet extends StatelessWidget {
  const BottonSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 400,
        width: double.infinity,
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: AddNoteForm(),
       ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
 final GlobalKey<FormState> fKey=GlobalKey();
 //use it if user enter invalid input or not allowed:
 AutovalidateMode autovalidate=AutovalidateMode.disabled;
 String? title,desc;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fKey,
      autovalidateMode: autovalidate,
      child: Column(
        children: [
          SizedBox(height: 15,),
          BottomSheetTextField(
          onsaved: (value){
            title=value;
          },
          text: "Title",maxlin: 1),
          SizedBox(height: 10,),
          BottomSheetTextField(
            onsaved: (value){
            title=value;
          },text: "Content",maxlin: 5,),
          SizedBox(height: 100,),
          AddButton(ontap: (){
            if(fKey.currentState!.validate()){
             fKey.currentState!.save();
            }else{
              autovalidate=AutovalidateMode.always;
              setState(() {

              });
            }
          },)
        ],
      ),
    );
  }
}
