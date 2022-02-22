import 'package:flutter/material.dart';
import 'package:to_do_list/model/question.dart';
import 'package:to_do_list/stream.dart';

class ListStream extends StatelessWidget{
  const ListStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Question>>(
        stream: MyStream.showStream,
        builder: (context, snapshot){
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(snapshot.data[index].title, style: const TextStyle(fontSize: 20, color: Colors.black)),
                  Checkbox(value: snapshot.data[index].isCheck, onChanged: (d){}),
                ]
              );
            }
          );
        }
    );
  }
}