class Task {
  String title;
  bool isDone;
  DateTime createdAt;

  Task({
    required this.title,
    this.isDone = false,
    required this.createdAt,
  });
}
