import 'package:flutter/material.dart';
import 'package:to_do_list/dialog/dialog.dart';
import 'package:to_do_list/model/question.dart';
import 'package:to_do_list/stream/teststream.dart';

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
          resizeToAvoidBottomInset: false,
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
        ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(flex: 1,
                    child: Center(
                      child : TextButton(
                        child: const Text('Create Task',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () => setState(() {
                          showDialog(
                              context: context,
                              builder: (context) => const testAlertDialog()
                          );
                        }),
                      ),
                    )),
                Expanded(flex: 11,
                  child: StreamBuilder<List<Question>>(
                    stream: MyStream.showStream,
                    builder: (context, snapshot){
                      if(snapshot.hasData){
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index){
                              return Row(
                                children: [
                                  Expanded(flex: 12,
                                      child: Container(
                                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 15),
                                        child: Text(snapshot.data![index].title,
                                          style: const TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),),
                                      )),
                                  Expanded(flex: 2,
                                    child: Checkbox(value: snapshot.data![index].isCheck, onChanged: (d){
                                      setState(() {
                                        snapshot.data![index].isCheck = d!;
                                        MyStream.setUpgrade();
                                      });
                                    }),
                                  )
                                ],
                              );
                            }
                            );
                      }
                      return Container();
                      },
                  ),
                )
              ],
            ),
          )
      ),
    );
  }

  @override
  void dispose() {
    MyStream.dispose();
    super.dispose();
  }

}