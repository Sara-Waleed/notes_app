import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit.dart';
import 'package:notes_app/data/notedataModel.dart';
import 'package:notes_app/domain/shared_components/AddButton.dart';
import 'custom_TextField.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
class BottonSheet extends StatefulWidget {
  const BottonSheet({
    super.key,
  });

  @override
  State<BottonSheet> createState() => _BottonSheetState();
}

class _BottonSheetState extends State<BottonSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: BlocConsumer(
           builder:(context, state) {
             return ModalProgressHUD(
                 inAsyncCall: state is AddNoteLoading ? true : false,
                 child: SingleChildScrollView(child: AddNoteForm()));
           },
           listener: (context, state){
        if(state is AddNoteFailaure){
          print("failed");
        }
        if(state is AddNoteSuccess){
        Navigator.pop(context);
        }
           },
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
          AddButton(
            ontap: (){
            if(fKey.currentState!.validate()){
             fKey.currentState!.save();
             var noteModel = NoteModel(
                 title: title!,
                 content: desc!,
                 date: DateTime.now().toString(),
                 color: Colors.yellow.value);
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
