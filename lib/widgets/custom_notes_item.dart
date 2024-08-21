import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_list_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key, required this.notes});
  final NotesModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNotesView(
            notes: notes,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.only(left: 16, top: 20, bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(notes.color)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                notes.title,
                style: const TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                notes.subTitle,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.5),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                  BlocProvider.of<NotesListCubit>(context).fetchNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  size: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 16),
              child: Text(
                notes.date,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
