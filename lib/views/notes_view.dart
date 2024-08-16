import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 46, 60, 70),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container();
                });
          },
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: const Column(
          children: [
            CustomAppBar(),
            NotesListView(),
          ],
        ));
  }
}
