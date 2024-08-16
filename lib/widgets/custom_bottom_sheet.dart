import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextfeild(
              hinText: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextfeild(
              hinText: 'Content',
              maxLines: 7,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
