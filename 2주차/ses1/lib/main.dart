import 'package:flutter/material.dart';
import 'package:ses1/presentation/page/main/s_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { //Stateless/Stateful위젯:상태관리위젯
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //MaterialApp:구글 디자인시스템을 따르는 앱
                        //CupertinoApp: 애플 디자인시스템을 따르는 앱
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(), //home: 첫화면
    );
  }
}

class MyHomePage extends StatefulWidget { //앱 실행시 첫 화면
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold( //Scaffold: 레이어, 틀같은 거
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(children: [ //Row:가로/Column:세로배치
          const Text("안녕하세요"), //글씨
          Container( //Container: 상자
            color: const Color(0xff123456),
            width: 100,
            height: 50,
          ),
          Container(
            color: const Color.fromARGB(70, 12, 34, 56), //맨앞이 투명도
            width: 100,
            height: 50,
          ),
          Container(
            color: const Color(0xff122477),
            width: 100,
            height: 50,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
