class Question{
  String title;
  bool isCheck;

  Question({
  required this.title ,
  required this.isCheck
  });

    Map<String, dynamic> toMap(){
    return {
      'title' : title,
      'isChecked' : isCheck
    };
  }
}