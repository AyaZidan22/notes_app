import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.notes});
  final NotesModel notes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomAppBar(
              title: 'Edit Note',
              icon: Icon(Icons.check),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextfeild(
              hinText: 'Title',
              controller: TextEditingController(text: notes.title),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfeild(
              controller: TextEditingController(text: notes.subTitle),
              hinText: 'Content',
              maxLines: 7,
            ),
          ],
        ),
      ),
    );
  }
}
