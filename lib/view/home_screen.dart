import 'package:flutter/material.dart';
import 'package:ui_design/view/widgets/input_text.dart';
import 'package:ui_design/view/widgets/label.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  final textCtrl= TextEditingController();
  void Function()? onTap;
  void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("The Odering"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32,),
            const Label(
              text: "Welcome to the Odering",
              fontFamily: Onest.semiBold,
              fontSize: 16,
            ),
          const Label(
            text: 'Now order what you want by yourself'
            ),
            const SizedBox(height: 16),
            const Label(text: 'Find what you want',
            fontFamily: Onest.light,
            fontSize: 13,
            ),
            const SizedBox(height: 4,),
            InputText(controller: textCtrl ,)
          ],
        ),
        ),
      ),
    );
  }
}