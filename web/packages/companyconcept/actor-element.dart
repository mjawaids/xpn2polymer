// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart';
import 'dart:html' show CustomEvent, Event, Node;
import 'package:polymer/polymer.dart';

/// A Polymer `<actor-element>` element.
@CustomTag('actor-element')
class ActorElement extends PolymerElement with Observable {  
  @published Actor actor;

  /// Constructor used to create instance of MainApp.
  ActorElement.created() : super.created() {
    polymerCreated();
  }
  
  void addActor(Event event, Object detail, Node sender) {
    event.preventDefault();
      
    dispatchEvent(new CustomEvent('addactor',
        detail: {'actor': actor}));
  }
  
  void deleteActor(Event event, Object detail, Node sender) {
      event.preventDefault();
        
      dispatchEvent(new CustomEvent('deleteactor',
          detail: {'actor': actor}));
    }
}