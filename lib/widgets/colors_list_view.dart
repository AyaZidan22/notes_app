import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  final List<Color> colorList = const [
    Color(0xff180161),
    Color(0xff4F1787),
    Color(0xffEB3678),
    Color(0xffFB773C),
    Color(0xff114B5F),
    Color(0xff028090),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNotesCubit>(context).color = colorList[index];
              setState(() {});
            },
            child: ColorItem(
              color: colorList[index],
              isColorSelected: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
