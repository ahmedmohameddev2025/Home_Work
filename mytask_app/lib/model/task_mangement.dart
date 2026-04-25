import 'task_model.dart';

class TaskMangement {
  static List<TaskModel> tasks = [];

  static void addTask(String title) {
    tasks.add(TaskModel(title: title, createdAt: DateTime.now()));
  }

  static void deleteTask(TaskModel task) {
    tasks.remove(task);
  } 

  static void toggleTask(TaskModel task) {
    task.isCompleted = !task.isCompleted;
  }
}
