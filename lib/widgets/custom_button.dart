import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.cyan,
        ),
        child: const Center(
          child: Text(
            'Add',
          ),
        ),
      ),
    );
  }
}
