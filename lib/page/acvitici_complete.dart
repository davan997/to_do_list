import 'package:flutter/material.dart';
import 'package:to_do_list/data/liststream.dart';

class Complete extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Complete();
  }
}

class _Complete extends State<Complete>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Complete Task",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
        body: ListStream()
      ),
    );
  }
}