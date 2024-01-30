import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');


  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["What's up FED?", false],
      ["You need an App Developer right?", false],
      ["Then Please Recruit me!", false],
      ["I have a very basic knowlegde of Dart,Kotlin, Flutter and Android Studio, now this is done by flexible widget which is not working okay but okay!", false],
      ["Swipe left to delete the task", false],
      ["These are the default tasks by using Hive Library", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}