import 'package:flutter/material.dart';
import 'package:ui_design/view/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          
          backgroundColor: const Color(0xFF424242),
          titleTextStyle: TextStyle(
            color: Colors.grey[200],
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          centerTitle: true,
          elevation: 10,
        ),
        useMaterial3: true,
      ),
      home: const home_screen(),
    );
  }
}

