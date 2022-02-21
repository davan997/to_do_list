import 'package:flutter/material.dart';
import 'package:to_do_list/dialog.dart';
import 'package:to_do_list/data/liststream.dart';

class AQusetion extends StatefulWidget{
  const AQusetion({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _AQusetion();
  }
}

class _AQusetion extends State<AQusetion>{
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
                    builder: (context) => const testAlertDialog()
                  ),
                ),
              ),
              ListStream()
            ],
          ),
        ),
      ),
    );
  }
}