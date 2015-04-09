import 'package:polymer/polymer.dart';
import 'models.dart';
import 'dart:html' show Event, Node;

/// Class to represent a collection of Codelab objects.
@CustomTag('response-list')
class ResponseList extends PolymerElement {
  /// Collection of rules. The source of truth for all rules in this app.
  @observable List<Response> responses = toObservable([]);

  /// Named constructor.
  ResponseList.created() : super.created() {
  }

  /// Adds a rule to the rules list.
  void addResponse(Event e, var detail, Node sender) {
    e.preventDefault();
    responses.add( new Response() );
  }

  /// Removes a rule from the rules list.
  void deleteResponse(Event e, var detail, Node sender) {
    e.preventDefault();
    if(responses.length > 1) {
      var dresponse = detail['response'];
      responses.remove(dresponse);
    }
  }
}