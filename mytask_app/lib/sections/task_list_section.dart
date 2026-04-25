import 'package:flutter/material.dart';

import '../model/task_mangement.dart';
import '../widgets/task_item.dart';

class TaskListSection extends StatefulWidget {
  const TaskListSection({super.key});

  @override
  State<TaskListSection> createState() => TaskListSectionState();
}

class TaskListSectionState extends State<TaskListSection> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final tasks = TaskMangement.tasks;

    if (tasks.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_outline, size: 80, color: Color(0xFFA9CFCC)),
            SizedBox(height: 10),
            Text(
              "No tasks yet",
              style: TextStyle(fontSize: 18, color: Color(0xFF6F7573)),
            ),
            Text(
              "Add a task to get started",
              style: TextStyle(color: Color(0xFFA3A9A7)),
            ),
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
            TaskMangement.toggleTask(task);
            refresh();
          },
          onDelete: () {
            TaskMangement.deleteTask(task);
            refresh();
          },
        );
      },
    );
  }
}
