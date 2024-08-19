import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNotes(NotesModel note) async {
    emit(AddNotesLoading());
    try {
      var box = Hive.box<NotesModel>(kNotesBox);
      await box.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailed(errorMessage: e.toString()));
    }
  }
}
