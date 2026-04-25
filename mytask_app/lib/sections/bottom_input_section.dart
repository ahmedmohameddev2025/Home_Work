import 'package:flutter/material.dart';

import '../model/task_mangement.dart';

class BottomInputSection extends StatefulWidget {
  final VoidCallback onAdd;

  const BottomInputSection({super.key, required this.onAdd});

  @override
  State<BottomInputSection> createState() => _BottomInputSectionState();
}

class _BottomInputSectionState extends State<BottomInputSection> {
  final TextEditingController controller = TextEditingController();

  void addTask() {
    if (controller.text.trim().isEmpty) return;

    TaskMangement.addTask(controller.text.trim());

    controller.clear();

    widget.onAdd();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Add a new task...",
                filled: true,
                fillColor: const Color(0xFFEFF3F2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            radius: 25,
            backgroundColor: const Color(0xFFDEE4E2),
            child: IconButton(
              icon: const Icon(Icons.add, color: Color(0xFF8E9492)),
              onPressed: addTask,
            ),
          ),
        ],
      ),
    );
  }
}
