import 'package:flutter/material.dart';
import 'package:to_do_list/data/data.dart';

class Complete extends StatelessWidget{
  const Complete({Key? key}) : super(key: key);

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
        body: ListView(
          children: lq.map((e) =>
            Center(
              child: Row(
                children: [
                  Text(e.title),
                  Checkbox(value: e.isCheck, onChanged: (d){
                  })
                ],
              ),
            )
          ).toList()
        ),
      )
    );
  }
}