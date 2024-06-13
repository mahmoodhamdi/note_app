import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/constants/constants.dart';
import 'package:note_app/features/home/logic/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/features/home/ui/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, required this.isActive});
  final bool isActive;

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;


// These are Flutter's built-in colors represented as Color objects.

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
                  BlocProvider.of<AddNoteCubit>(context).color =
                      kColorList[index];

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
