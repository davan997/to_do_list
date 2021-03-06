import 'package:flutter/material.dart';
import 'package:to_do_list/page/activity_incomplete.dart';
import 'package:to_do_list/page/acvitici_complete.dart';
import 'package:to_do_list/page/activity_question.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp>{

  int current_index = 0;
  final screen = [
    const Complete(),
    const AQusetion(),
    const InComplete()
  ];

  @override
  void initState() {
    super.initState();
    current_index = 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: IndexedStack(
          children: screen,
          index: current_index,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: current_index,
            onTap: (d) => setState(() {
              current_index = d;
            }),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.check), label: 'Complete' ),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'All'),
              BottomNavigationBarItem(icon: Icon(Icons.close), label: 'InComplete')
            ]),
      ),
    );
  }
}