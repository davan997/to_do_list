import 'dart:async';
import 'package:to_do_list/model/question.dart';

class MyStream {
  static List<Question> lcauhoi = [];
  static StreamController<List<Question>> streamController = StreamController<List<Question>>.broadcast();
  static Stream<List<Question>> get showStream => streamController.stream;

  static void increment(String s, bool b){
    lcauhoi.add(Question(title: s,isCheck: b));
    streamController.sink.add(lcauhoi);
  }

  static void setUpgrade(){
    streamController.sink.add(lcauhoi);
  }

  static void dispose(){
    streamController.close();
  }
}