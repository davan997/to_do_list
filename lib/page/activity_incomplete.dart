import 'package:flutter/material.dart';
import 'package:to_do_list/data/liststream.dart';

class InComplete extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _InComplete();
  }
}

class _InComplete extends State<InComplete>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("InComplete Task",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textDirection: TextDirection.ltr,),
          ),
        ),
        body: ListStream()
      ),
    );
  }
}