import 'package:flutter/material.dart';
import 'package:to_do_list/page/activity_question.dart';

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
        body: StreamBuilder(
          stream: callback().getStream,
          builder: (context, snapshot) {
            return Container(padding: const EdgeInsets.fromLTRB(15, 298, 10, 0),
                child: Text(snapshot.hasData ? snapshot.data.toString() : "No data, please create the task new",
                    style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold)
                )
            );
          },
        ),
      ),
    );
  }
}