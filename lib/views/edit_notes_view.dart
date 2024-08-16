import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icon(Icons.check),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 20, right: 16, left: 16),
            child: CustomTextfeild(hinText: 'Title'),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20, right: 16, left: 16),
            child: CustomTextfeild(
              hinText: 'Content',
              maxLines: 7,
            ),
          ),
        ],
      ),
    );
  }
}
