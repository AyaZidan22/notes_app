import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild({super.key, required this.hinText, required this.maxLines});
  final String hinText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hinText,
        hintStyle: const TextStyle(color: Colors.cyan),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
