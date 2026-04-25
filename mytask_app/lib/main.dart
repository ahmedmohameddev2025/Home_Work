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

class MyTasksScreen extends StatefulWidget {
  const MyTasksScreen({super.key});

  @override
  State<MyTasksScreen> createState() => _MyTasksScreenState();
}

class _MyTasksScreenState extends State<MyTasksScreen> {

  final GlobalKey<TaskListSectionState> listKey = GlobalKey();

  void refreshList() {
    listKey.currentState?.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FBF9),
      body: SafeArea(
        child: Column(
          children: [
            const HeaderSection(),
            Expanded(
              child: TaskListSection(key: listKey),
            ),
            BottomInputSection(onAdd: refreshList),
          ],
        ),
      ),
    );
  }
}
