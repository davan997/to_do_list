import 'dart:async';
import 'package:to_do_list/model/question.dart';
import 'package:to_do_list/data/data.dart';

class MyStream {
  static StreamController<List<Question>> streamController = StreamController<List<Question>>.broadcast();
  static Stream<List<Question>> get showStream => streamController.stream;

  static void increment(String s, bool b){
    lq.add(Question(title: s,isCheck: b));
    streamController.sink.add(lq);
  }

  void dispose(){
    streamController.close();
  }
}