import 'package:flutter/material.dart';
import 'package:to_do_list/model/question.dart';
import 'package:to_do_list/stream/teststream.dart';

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
        body: StreamBuilder<List<Question>>(
          stream: MyStream.showStream,
          builder: (context, snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index){
                    if(snapshot.data![index].isCheck == true){
                      return Row(
                        children: [
                          Expanded(flex: 12,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(20, 20, 0, 15),
                                child: Text(snapshot.data![index].title,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),),
                              )),
                          Expanded(flex: 2,
                              child: Checkbox(value: snapshot.data![index].isCheck, onChanged: (d){})
                          )
                        ],
                      );
                    }
                    return Container();
                  }
              );
            }
            return Container();
          },
        ),
      )
    );
  }
}