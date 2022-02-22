import 'package:flutter/material.dart';
import 'package:to_do_list/data/liststream.dart';

class InComplete extends StatelessWidget{
  const InComplete({Key? key}) : super(key: key);

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