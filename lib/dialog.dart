import 'package:flutter/material.dart';
import 'package:to_do_list/stream.dart';

class testAlertDialog extends StatefulWidget{
  const testAlertDialog({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _testAlertDialog();
  }
}

class _testAlertDialog extends State<testAlertDialog>{

  MyStream myStream = MyStream();
  String addQ = '';
  final edittextdialog = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      content: SizedBox(
        height: 190,
        child: Column(
            children: [
              Container(padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                alignment: Alignment.topLeft,
                child: const Text("Create task", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              Container(padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Row(
                    children:[
                      Expanded( flex: 7,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: TextField(
                                decoration: const InputDecoration(hintText: 'Write task here ...',),
                                style: const TextStyle(fontSize: 20),
                                controller: edittextdialog,
                                onChanged: (d) => setState(() {
                                  addQ = d;
                                })),
                          )
                      ),
                      Expanded( flex: 2,
                          child: Checkbox(
                            value: isChecked,
                            onChanged: (bool? d)=> setState(() => isChecked = d!),
                          )
                      )
                    ],
                  )
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 25, 10, 5),
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: const Text('SUBMIT', style: TextStyle(fontSize: 15),),
                  onPressed: ()=> setState(() {
                    if(edittextdialog.text.isNotEmpty){
                      myStream.increment(addQ, isChecked);
                      edittextdialog.text = '';
                      Navigator.of(context).pop();
                    } else {
                      String text = "Please fill task above";
                      SnackBar snackbar = SnackBar(content: Text(text));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  }),
                ),
              )
            ]
        ),
      ),
    );
  }
}