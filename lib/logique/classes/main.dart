import 'event.dart';
import 'category.dart';
import 'manager.dart';
import 'player.dart';
import 'match.dart';
import 'statistics.dart';
import 'classif.dart';

void main() {
  // Simulating the WWL system from genesis
  EventManager eventManager = EventManager();

  // Create categories
  Category categoryA = Category(name: 'A', rank: 1);
  Category categoryB = Category(name: 'B', rank: 2);
  Category categoryC = Category(name: 'C', rank: 3);

  // Create players
  Player player1 = Player(id: 1, name: 'Alice', category: 'A');
  Player player2 = Player(id: 2, name: 'Bob', category: 'B');
  Player player3 = Player(id: 3, name: 'Charlie', category: 'C');

  // Create an event
  Event event = eventManager.createEvent(
      'Summer Tournament', DateTime(2023, 6, 1), DateTime(2023, 6, 7));
  print('Event created: ${event.name}');

  // Generate matches (simplified)
  Match match1 = Match(
      id: 1,
      eventId: event.id,
      player1: player1.name,
      player2: player2.name,
      category: 'A');
  Match match2 = Match(
      id: 2,
      eventId: event.id,
      player1: player2.name,
      player2: player3.name,
      category: 'B');

  // Simulate match results
  match1.updateResult(player1.name, player2.name);
  print('Match 1 result: ${match1.winner} won against ${match1.loser}');

  match2.updateResult(player3.name, player2.name);
  print('Match 2 result: ${match2.winner} won against ${match2.loser}');

  // Update player categories based on results
  player2.updateCategory('C');
  player3.updateCategory('B');
  print(
      'Updated categories: ${player1.name}: ${player1.category}, ${player2.name}: ${player2.category}, ${player3.name}: ${player3.category}');

  // Generate statistics
  Statistics eventStats = Statistics(eventId: event.id);
  print('Event statistics generated: ${eventStats.generateEventStats()}');

  // Update classification
  Classification classification = Classification(eventId: event.id);
  classification.updateRankings();
  print('Current rankings: ${classification.getCurrentRankings()}');

  // Close the event
  eventManager.closeEvent(event.id);
  print('Event closed: ${event.name}');
}
