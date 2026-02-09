// Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
// only the movies with a rating above 7.
void main() {
  List<Movie> movies = [
    Movie("The Matrix", 8.8),
    Movie("The Dark Knight", 7.2),
    Movie("Gravity", 6.5),
    Movie("The Prestige", 8.6),
  ];

  for (var m in movies) {
    if (m.rating > 7) {
      print(m.title);
    }
  }
}

class Movie {
  String title;
  double rating;

  Movie(this.title, this.rating);
}
