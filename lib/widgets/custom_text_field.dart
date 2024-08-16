import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild(
      {super.key, required this.hinText, this.maxLines=1});
  final String hinText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hinText,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    );
  }
}
