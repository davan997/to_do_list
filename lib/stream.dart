import 'dart:async';

import 'package:to_do_list/data/data.dart';
import 'package:to_do_list/model/question.dart';
class MyStream {
  final StreamController _streamController = StreamController<List<Question>>.broadcast();
  Stream get getStream => _streamController.stream;
  // var streamTranformer = StreamTransformer<List<Question>,Question>
  //     .fromHandlers(handleData: (data, sink) {
  //       for(var i = 0; i < data.length; i++){
  //         if(data[i].isCheck == false){
  //           nhungcauhoi.add(Question(title: '', isCheck: false));
  //           sink.add(data[i]);
  //         } else {
  //           sink.add(data[i]);
  //         }
  //       }
  //     });

  void increment(String s, bool b){
    nhungcauhoi.add(Question(title: s, isCheck: b));
    _streamController.sink.add(nhungcauhoi);
  }

  void dispose(){
    _streamController.close();
  }
}