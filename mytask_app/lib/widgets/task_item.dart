import 'package:flutter/material.dart';
import '../model/task_model.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onChanged;
  final VoidCallback onDelete;

  const TaskItem({
    super.key,
    required this.task,
    required this.onChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5),
        ],
      ),
      child: Row(
        children: [
          Checkbox(
            value: task.isDone,
            onChanged: (_) => onChanged(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
  task.title,
  style: TextStyle(
    decoration: task.isDone ? TextDecoration.lineThrough : null,
    color: task.isDone ? Colors.grey : Colors.black,
  ),
),
                Text(
                  "Created: ${task.createdAt.day}/${task.createdAt.month}/${task.createdAt.year}",
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
