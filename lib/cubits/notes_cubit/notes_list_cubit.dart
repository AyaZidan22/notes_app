import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_list_state.dart';

class NotesListCubit extends Cubit<NotesListState> {
  NotesListCubit() : super(NotesListInitial());

  List<NotesModel>? notesList;
  fetchNotes() {
    var box = Hive.box<NotesModel>(kNotesBox);
    notesList = box.values.toList();
    emit(NotesListSuccess());
  }
}
