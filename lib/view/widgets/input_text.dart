
import 'package:flutter/material.dart';

import 'package:ui_design/view/widgets/label.dart';
class InputText extends StatelessWidget {
  const InputText({super.key, this.onSubmitted, this.onTap, this.controller});
  final TextEditingController? controller;
  final void Function(String p1)? onSubmitted;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      padding: const EdgeInsets.only(
        left: 16,
        top: 5,
        right: 0,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFE0E0E0),
          width: 1.5,
          strokeAlign: BorderSide.strokeAlignCenter,
          style: BorderStyle.solid,
        ),
      ),
      child: TextField(
        controller: controller,
        style: labelStyle(),
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          hintText: "Search",
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: const Padding(
              padding: const EdgeInsets.all(3.0),
              
            ),
          ),
        ),
      ),
    );
  }
}