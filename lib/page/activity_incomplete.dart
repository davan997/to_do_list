import 'dart:async';

import 'package:flutter/material.dart';

import 'package:to_do_list/stream.dart';

class InComplete extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _InComplete();
  }
}

class _InComplete extends State<InComplete>{

  MyStream _myStream = MyStream();

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
        body: StreamBuilder(
          stream: _myStream.getStream,
          builder: (context, snapshot) {
            return Container(padding: const EdgeInsets.fromLTRB(15, 298, 10, 0),
                child: Text(snapshot.hasData ? snapshot.data.toString() : "No data, please create the task new",
                    style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold)
              )
            );
          },
        )
      ),
    );
  }
}