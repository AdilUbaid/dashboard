import 'package:dashboard/const/constants.dart';
import 'package:dashboard/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        scaffoldBackgroundColor: backgroundColor,brightness:Brightness.dark ,
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

