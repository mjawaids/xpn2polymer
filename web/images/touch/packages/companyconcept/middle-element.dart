// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart'; // show Model;
import 'dart:html' show CustomEvent, Event, Node;
import 'package:polymer/polymer.dart';

/// A Polymer `<middle-element>` element.
@CustomTag('middle-element')
class MiddleElement extends PolymerElement with Observable {
  @published Model model;
  @published String mode;

  /// Constructor used to create instance of MainApp.
  MiddleElement.created() : super.created() {
    polymerCreated();
  }
  
  void toggleDialog(Event e, var detail, Node sender) {
    e.preventDefault();
    
    dispatchEvent(new CustomEvent('design', detail: {'model': model}));
  }

  void add(Event event, Object detail, Node sender) {
    event.preventDefault();
      
    dispatchEvent(new CustomEvent('add',
        detail: {'model': model}));
  }
  
  void delete(Event event, Object detail, Node sender) {
      event.preventDefault();
        
      dispatchEvent(new CustomEvent('delete',
          detail: {'model': model}));
    }
}