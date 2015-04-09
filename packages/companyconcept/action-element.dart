// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart';
import 'dart:html' show CustomEvent, Event, Node;
import 'package:polymer/polymer.dart';

/// A Polymer `<action-element>` element.
@CustomTag('action-element')
class ActionElement extends PolymerElement with Observable {
  @published Action action;

  /// Constructor used to create instance of MainApp.
  ActionElement.created() : super.created() {
    polymerCreated();
  }
  
  void addAction(Event event, Object detail, Node sender) {
    event.preventDefault();
      
    dispatchEvent(new CustomEvent('addaction',
        detail: {'action': action}));
  }
  
  void deleteAction(Event event, Object detail, Node sender) {
      event.preventDefault();
        
      dispatchEvent(new CustomEvent('deleteaction',
          detail: {'action': action}));
    }
}