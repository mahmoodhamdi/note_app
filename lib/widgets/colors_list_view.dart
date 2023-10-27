import 'package:flutter/material.dart';
import 'package:note_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, required this.isActive});
  final bool isActive;

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  List<Color> colorList = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.pink,
    Colors.indigo,
    Colors.lime,
    Colors.amber,
    Colors.cyan,
    Colors.red,
    Colors.grey,
    Colors.brown,
    Colors.black,
    Colors.white,
  ];

// These are Flutter's built-in colors represented as Color objects.

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 3,
      child: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                    isActive: currentIndex == index, color: colorList[index])),
          );
        },
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
