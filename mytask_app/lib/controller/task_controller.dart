import 'package:flutter/material.dart';
import '../model/task_model.dart';

class TaskController {
  static ValueNotifier<List<Task>> tasks = ValueNotifier([]);

  static void addTask(String title) {
    tasks.value = [
      ...tasks.value,
      Task(title: title, createdAt: DateTime.now()),
    ];
  }

  static void deleteTask(Task task) {
    tasks.value = tasks.value.where((t) => t != task).toList();
  }

  static void toggleTask(Task task) {
    task.isDone = !task.isDone;
    // tasks.notifyListeners();
    tasks.value = [...tasks.value];
  }
}
