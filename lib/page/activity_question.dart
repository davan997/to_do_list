import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:to_do_list/dialog.dart';
import 'package:to_do_list/stream.dart';

class AQusetion extends StatefulWidget{
  const AQusetion({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _AQusetion();
  }
}

MyStream callback(){
  MyStream myStream = MyStream();
  return myStream;
}

class _AQusetion extends State<AQusetion>{

  @override
  void dispose() {
    callback().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          title: const Center(
            child: Text("All Task",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textDirection: TextDirection.ltr,),
          ),
        ) ,
        body:SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child : TextButton(
                  child: const Text('Create Task',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => testAlertDialog()
                  ),
                ),
              ),
              StreamBuilder(stream: callback().getStream, builder: (context, snapshot) =>
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 250, 10, 0),
                        child: Text(snapshot.hasData ? snapshot.data.toString() : "No data, please create the task new",
                          style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                        )
                    ),
                  ],
                ))
            ],
          ),
        ),
      ),
    );
  }
}