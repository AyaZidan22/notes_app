import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.color});
  final Color color;

  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
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
  initState() {
    super.initState();
    currentIndex = selectIndex();
    BlocProvider.of<AddNotesCubit>(context).color = colorList[currentIndex];
  }

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
              BlocProvider.of<AddNotesCubit>(context).color =
                  colorList[currentIndex];

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

  int selectIndex() {
    int i = 0;
    for (i; i < colorList.length; i++) {
      if (colorList[i] == widget.color) {
        return i;
      }
    }
    return i;
  }
}
