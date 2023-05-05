import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier{
  List<String> _tasks = ["tarefa 1", "tarefa 2"];
  List<String> get tasks => _tasks;

  void addTask(String task){
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}