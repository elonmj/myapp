class Player {
  final int id;
  final String name;
  String category;

  Player({required this.id, required this.name, required this.category});

  void updateCategory(String newCategory) {
    category = newCategory;
  }

  List<Match> getMatchHistory() {
    // TODO: Implement method to fetch match history
    return [];
  }
}