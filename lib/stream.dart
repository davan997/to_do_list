import 'dart:async';

import 'package:to_do_list/model/question.dart';
class MyStream {
  List<Question> addcauhoi = <Question>[];
  final StreamController _streamController = StreamController<List<Question>>.broadcast();
  Stream get getStream => _streamController.stream;
  var streamTranformer = StreamTransformer<List<Question>,List<Question>>.fromHandlers(handleData: (data, sink) {
    data.where((element) => !element.isCheck);
    sink.add(data);
  });

  void increment(String s, bool b){
    addcauhoi.add(Question(title: s, isCheck: b));
    _streamController.sink.add(addcauhoi);
  }

  void dispose(){
    _streamController.close();
  }
}