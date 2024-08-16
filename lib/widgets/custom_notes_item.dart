import 'package:flutter/material.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.blueGrey),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Flutter Tips',
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              'Build your own career',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, right: 16),
            child: Text('16Aug ,2024'),
          ),
        ],
      ),
    );
  }
}
