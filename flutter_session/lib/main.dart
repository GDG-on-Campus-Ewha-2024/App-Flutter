import 'package:flutter/material.dart';

import 'presentation/page/home/s_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background
        //TODO: 앱 배경 화면 설정
      ),
      home: const HomeScreen(),
    );
  }
}
