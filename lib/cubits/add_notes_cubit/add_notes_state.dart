part of 'add_notes_cubit.dart';

sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNotesLoading extends AddNotesState {}

final class AddNotesSuccess extends AddNotesState {}

final class AddNotesFailed extends AddNotesState {
  final String errorMessage;
  AddNotesFailed({required this.errorMessage});
}
