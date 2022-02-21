import 'package:flutter/material.dart';
import 'package:to_do_list/stream.dart';

MyStream callback() => MyStream();

class ListStream extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: callback().getStream,
        builder: (context, snapshot) =>
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(15, 250, 10, 0),
                    child: Text(snapshot.hasData ? snapshot.data.toString() : "No data, please create the task new",
                      style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    )
                ),
              ],
            )
    );
  }
}