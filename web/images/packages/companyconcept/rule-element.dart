// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart';
import 'dart:html' show CustomEvent, Event, Node;
import 'package:polymer/polymer.dart';

/// A Polymer `<rule-element>` element.
@CustomTag('rule-element')
class RuleElement extends PolymerElement with Observable {  
  @published Rule rule;

  /// Constructor used to create instance of MainApp.
  RuleElement.created() : super.created() {
    polymerCreated();
  }
  
  void addRule(Event event, Object detail, Node sender) {
    event.preventDefault();
    dispatchEvent(new CustomEvent('addrule',
        detail: {'rule': rule}));
  }
  
  void deleteRule(Event event, Object detail, Node sender) {
      event.preventDefault();
      dispatchEvent(new CustomEvent('deleterule',
          detail: {'rule': rule}));
    }
}