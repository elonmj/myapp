import 'event.dart';
import 'category.dart';
import 'manager.dart';
import 'player.dart';
import 'match.dart';
import 'statistics.dart';
import 'classif.dart';
// category.dart
class Category {
  final String name;
  final int rank;

  Category({required this.name, required this.rank});

  List<Player> getPlayers() {
    // TODO: Implement method to fetch players in this category
    return [];
  }
}