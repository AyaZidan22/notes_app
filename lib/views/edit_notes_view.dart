import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_list_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_color_list_view.dart';

class EditNotesView extends StatefulWidget {
  const EditNotesView({super.key, required this.notes});
  final NotesModel notes;

  @override
  State<EditNotesView> createState() => _EditNotesViewState();
}

class _EditNotesViewState extends State<EditNotesView> {
  String? title, content;
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
            CustomAppBar(
              onPressed: () {
                widget.notes.title = title ?? widget.notes.title;
                widget.notes.subTitle = content ?? widget.notes.subTitle;
                widget.notes.color =
                    BlocProvider.of<AddNotesCubit>(context).color.value;
                BlocProvider.of<NotesListCubit>(context).fetchNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: const Icon(Icons.check),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextfeild(
              onChange: (value) {
                title = value;
              },
              hinText: 'Title',
              controller: TextEditingController(text: widget.notes.title),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfeild(
              onChange: (value) {
                content = value;
              },
              controller: TextEditingController(text: widget.notes.subTitle),
              hinText: 'Content',
              maxLines: 7,
            ),
            const SizedBox(
              height: 20,
            ),
            EditColorListView(
              color: Color(widget.notes.color),
            ),
          ],
        ),
      ),
    );
  }
}
