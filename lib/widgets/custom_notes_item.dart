import 'package:flutter/material.dart';
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
          return const EditNotesView();
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.only(left: 16, top: 20, bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.blueGrey),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                notes.title,
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                notes.subTitle,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
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
