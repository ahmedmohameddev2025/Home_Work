import 'package:flutter/material.dart';
import 'sections/header_section.dart';
import 'sections/task_list_section.dart';
import 'sections/bottom_input_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTasksScreen(),
    );
  }
}

class MyTasksScreen extends StatelessWidget {
  const MyTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F2),

      body: SafeArea(
        child: Column(
          children: const [
            HeaderSection(),

            Expanded(
              child: TaskListSection(),
            ),

            BottomInputSection(),
          ],
        ),
      ),
    );
  }
}
