import 'category.dart';
import 'classif.dart';
import 'event.dart';
import 'event.dart';
import 'category.dart';
import 'manager.dart';
import 'player.dart';
import 'match.dart';
import 'statistics.dart';
import 'classif.dart';
class EventManager {
  List<Event> events = [];

  Event createEvent(String name, DateTime startDate, DateTime endDate) {
    int id = events.length + 1;
    Event newEvent =
        Event(id: id, name: name, startDate: startDate, endDate: endDate);
    events.add(newEvent);
    return newEvent;
  }

  void closeEvent(int eventId) {
    Event event = events.firstWhere((e) => e.id == eventId);
    event.isOpen = false;
  }

  void reopenEvent(int eventId) {
    Event event = events.firstWhere((e) => e.id == eventId);
    event.isOpen = true;
  }

  void generateMatches(int eventId) {
    // TODO: Implement match generation logic
  }
    }

  void doMatch(int eventId) {
    // Implémentation de do_match
  }

}