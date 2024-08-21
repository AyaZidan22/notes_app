import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.color,
    required this.isColorSelected,
  });
  final Color color;
  final bool isColorSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: isColorSelected ? Colors.white : color,
          width: 5.0,
        ),
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
