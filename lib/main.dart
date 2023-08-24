import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleport_test_task/src/features/main/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'San Francisco Pro Display',
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
