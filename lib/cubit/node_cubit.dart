


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/data/notedataModel.dart';
import 'package:notes_app/domain/constant/constsnts.dart';

import 'add_note_cubit.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit(): super(AddNoteInitial());


addNote(NoteModel note)async{
  emit(AddNoteLoading());
  try {
    var noteBox = Hive.box<NoteModel>(kNoteBox);

    await noteBox.add(note);
    emit(AddNoteSuccess());
  }catch(e){
   emit( AddNoteFailaure(e.toString()));
  }
}

}