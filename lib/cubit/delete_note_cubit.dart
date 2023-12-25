abstract class DeleteNoteState{}
class DeleteNoteInitial extends DeleteNoteState{}
class DeleteNoteLoading extends DeleteNoteState{}
class DeleteNoteSuccess extends DeleteNoteState{}
class DeleteNoteFailaure extends DeleteNoteState{

  final String errormessage;
  DeleteNoteFailaure(this.errormessage);
}
