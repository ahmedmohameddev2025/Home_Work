import 'package:flutter/material.dart';

import '../model/task_model.dart';

class TaskItem extends StatelessWidget {
  final TaskModel task;
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
        color: Color(0xFFEFF5F3),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.2,
            child: Checkbox(
              value: task.isCompleted,
              onChanged: (_) => onChanged(),
              activeColor: const Color(0xFF016D63),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: task.isCompleted ? TextDecoration.lineThrough : null,
                    color: task.isCompleted ? Colors.grey : Colors.black,
                  ),
                ),
                Text(
                  "Created: ${task.createdAt.day}/${task.createdAt.month}/${task.createdAt.year}",
                  style: const TextStyle(fontSize: 12, color: Color(0xFF9CA2A0)),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.delete_outline,
              color: Color(0xFFE57373),
              size: 28,
            ),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
