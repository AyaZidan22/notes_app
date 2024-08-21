import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_list_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/widgets/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesListCubit, NotesListState>(
      builder: (context, state) {
        List<NotesModel>notesList=BlocProvider.of<NotesListCubit>(context).notesList!;
        return Expanded(
          child: ListView.builder(
            itemCount:
                notesList.length,
            itemBuilder: (context, index) {
              return  CustomNotesItem(notes:notesList[index] ,);
            },
          ),
        );
      },
    );
  }
}
