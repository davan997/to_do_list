import 'package:flutter/material.dart';
import 'package:to_do_list/data/data.dart';

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
          title: const Text("Complete",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            textDirection: TextDirection.ltr,),
        ),
        body: ListView(
          children: nhungcauhoi.map((e) => Row(
            children: [
              Text(e.title),
              Checkbox(value: e.isCheck == false, onChanged: (d) => setState(() {
              }))
            ],
          )).toList()
        ),
      ),
    );
  }
}