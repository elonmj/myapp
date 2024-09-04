class Match {
  final int id;
  final int eventId;
  final String player1;
  final String player2;
  final String category;
  String status;
  String? winner;
  String? loser;
  bool isRandom;

  Match({
    required this.id,
    required this.eventId,
    required this.player1,
    required this.player2,
    required this.category,
    this.status = 'pending',
    this.winner,
    this.loser,
    this.isRandom = false,
  });

  void updateResult(String winner, String loser) {
    this.winner = winner;
    this.loser = loser;
    this.status = 'completed';
  }

  void approveResult(String playerId) {
    // TODO: Implement approval logic
  }
}