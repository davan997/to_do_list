import 'dart:async';
import 'package:to_do_list/model/question.dart';

class MyStream {
  List<Question> lquestion = [];
  StreamController streamController = StreamController<List<Question>>.broadcast();
  Stream get getStream => streamController.stream;

  void increment(String s, bool b){
    lquestion.add(Question(title: s, isCheck: b));
    streamController.sink.add(lquestion);
  }

  void dispose(){
    streamController.close();
  }
}