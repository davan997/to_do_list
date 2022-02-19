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

class _AQusetion extends State<AQusetion>{

  MyStream myStream = MyStream();

  @override
  void dispose() {
    myStream.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          title: const Text("All Question",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            textDirection: TextDirection.ltr,),
        ) ,
        body:SingleChildScrollView(
          child: Column(
            children: [
              testAlertDialog(),
              StreamBuilder(stream: myStream.getStream, builder: (context, snapshot) =>
                Column(
                  children: [
                    Text(snapshot.hasData ? snapshot.data.toString() : " no Q")
                  ],
                ))
            ],
          ),
        ),
      ),
    );
  }
}