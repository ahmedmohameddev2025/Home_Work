// Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
// courses: one with custom duration and one with the default. Print both.
void main() {
  Course course1 = Course("Flutter", 5);
  Course course2 = Course("Dart");

  course1.details();
  course2.details();
}

class Course {
  String title;
  int duration;

  Course(this.title, [this.duration = 3]);

  void details() {
    print("Course: $title, Duration: $duration months");
  }
}
