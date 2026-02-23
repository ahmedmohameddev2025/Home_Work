// 1. Notes App – Organize Your Notes
// You are building a simple notes app where users can write and manage their notes.- Each note should have a title, some content, and the date it was created.- The app should allow creating new notes.- The app should allow listing all notes.- The app should allow searching for a note by its title.
void main() {
  NotesApp app = NotesApp();


  app.addNote("Books", "Flutter and Dart");
  app.addNote("Shopping", "meat and milk");



  print("All Notes:");
  app.listNotes();


  print("\nSearch Result:");
  Note? result = app.searchByTitle("Study");
  if (result != null) {
    print(result);
  } else {
    print("Note not found");
  }
}

class Note {
  String title;
  String content;
  DateTime createdAt;

  Note(this.title, this.content) : createdAt = DateTime.now();

  @override
  String toString() {
    return "Title: $title\nContent: $content\nDate: $createdAt\n";
  }
}

class NotesApp {
  List<Note> _notes = [];


  void addNote(String title, String content) {
    _notes.add(Note(title, content));
  }


  void listNotes() {
    if (_notes.isEmpty) {
      print("No notes available");
      return;
    }

    for (var note in _notes) {
      print(note);
    }
  }


  Note? searchByTitle(String title) {
    for (var note in _notes) {
      if (note.title.toLowerCase() == title.toLowerCase()) {
        return note;
      }
    }
    return null;
  }
}
