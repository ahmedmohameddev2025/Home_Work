// 3. Unique Visitor Counter
// You are building a mobile app that tracks unique visitors per day.- Each visitor is identified by an ID (an integer).- During the day, the app receives many repeated IDs (because the same user may open the app
// multiple times).- You need to count how many unique visitors used the app today.
// Write code that, given a list of visitor IDs, returns the number of unique visitors.
void main() {
  List<int> visitorIds = [1, 2, 3, 2, 5, 6, 7, 5, 9, 1];

  int uniqueCount = countUniqueVisitors(visitorIds);

  print("Unique visitors today: $uniqueCount");
}

int countUniqueVisitors(List<int> ids) {
  Set<int> uniqueVisitors = {};

  for (var id in ids) {
    uniqueVisitors.add(id);
  }

  return uniqueVisitors.length;
}
