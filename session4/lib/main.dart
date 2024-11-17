import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:session4/controller/like_controller.dart';
import 'package:session4/controller/navigator_controller.dart';
import 'package:session4/presentation/screen/s_home.dart';
import 'package:session4/presentation/screen/s_main.dart';

void main() {
  Get.put(LikeController());
  Get.put(NavigatorController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
