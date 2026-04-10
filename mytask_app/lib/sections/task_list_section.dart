import 'package:flutter/material.dart';
import '../controller/task_controller.dart';
import '../widgets/task_item.dart';

class TaskListSection extends StatelessWidget {
  const TaskListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: TaskController.tasks,
      builder: (context, tasks, _) {
        if (tasks.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle_outline, size: 80, color: Colors.grey),
                SizedBox(height: 10),
                Text("No tasks yet"),
                Text("Add a task to get started"),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];

            return TaskItem(
              task: task,
              onChanged: () {
                TaskController.toggleTask(task);
              },
              onDelete: () {
                TaskController.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
