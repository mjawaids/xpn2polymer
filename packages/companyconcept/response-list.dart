import 'package:polymer/polymer.dart';
import 'models.dart';
import 'dart:html' show Event, Node;
import 'package:observable/observable.dart';

/// Class to represent a collection of Codelab objects.
@PolymerRegister('response-list')
class ResponseList extends PolymerElement {
  /// Collection of rules. The source of truth for all rules in this app.
  @property List<Response> responses = new List();

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