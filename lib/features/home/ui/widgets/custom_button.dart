import 'package:flutter/material.dart';
import 'package:note_app/core/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, this.onTap, this.isLoading = false});
  final String title;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: kPrimaryColor),
        child: Center(
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
