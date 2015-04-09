import 'package:polymer/polymer.dart';
import 'models.dart';
import 'dart:html' show Event, Node;

/// Class to represent a collection of Codelab objects.
@CustomTag('rule-list')
class RuleList extends PolymerElement {
  /// Collection of rules. The source of truth for all rules in this app.
  @observable List<Rule> rules = toObservable([]);

  /// Named constructor.
  RuleList.created() : super.created() {
//    rules.add( new Rule() );  // Start with at least one rule to show
  }

  /// Adds a rule to the rules list.
  void addRule(Event e, var detail, Node sender) {
    e.preventDefault();
    rules.add( new Rule() );
  }

  /// Removes a rule from the rules list.
  void deleteRule(Event e, var detail, Node sender) {
    e.preventDefault();
    if(rules.length > 1) {
      var drule = detail['rule'];
//      print('rule: $drule , ${drule.value}');
      rules.remove(drule);
    }
  }
}