import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/color_item.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView(
      {super.key, required this.isActive, required this.noteModel});
  final bool isActive;
  final NoteModel noteModel;
  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  late int currentIndex;

// These are Flutter's built-in colors represented as Color objects.
  @override
  void initState() {
    currentIndex = kColorList.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 3,
      child: ListView.builder(
        itemCount: kColorList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.noteModel.color = kColorList[index].value;

                  setState(() {});
                },
                child: ColorItem(
                    isActive: currentIndex == index, color: kColorList[index])),
          );
        },
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
