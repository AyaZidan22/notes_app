import 'dart:ui';

class NotesModel {
  final String title;
  final String subTitle;
  final String date;
  final Color color;
  NotesModel(
      {required this.color,
      required this.date,
      required this.subTitle,
      required this.title});
}
