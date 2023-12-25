abstract class AddNoteState{}
class AddNoteInitial extends AddNoteState{}
class AddNoteLoading extends AddNoteState{}
class AddNoteSuccess extends AddNoteState{}
class AddNoteFailaure extends AddNoteState{

  final String errormessage;
  AddNoteFailaure(this.errormessage);
}
