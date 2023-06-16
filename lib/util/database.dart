import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // refer to hive box
  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [
      ["Scrub bathroom", false],
      ["Create application", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateData() {
    _myBox.put('TODOLIST', toDoList);
  }
}
