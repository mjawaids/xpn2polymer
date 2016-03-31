// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart'; // show Model;
import 'dart:html' show CustomEvent, Event, Node;
import 'package:polymer/polymer.dart';
import 'package:observable/observable.dart';

/// A Polymer `<middle-element>` element.
@PolymerRegister('middle-element')
class MiddleElement extends PolymerElement {
  @property Model model;
  @property String mode;

  /// Constructor used to create instance of MainApp.
  MiddleElement.created() : super.created() {
    polymerCreated();
  }
  
  void toggleDialog(Event e, var detail, Node sender) {
    e.preventDefault();
    
    dispatchEvent(new CustomEvent('design', detail: {'model': model}));
  }

  void add(String path, dynamic item) {
    dispatchEvent(new CustomEvent('add',
        detail: {'model': model}));
  }
  
  void delete(Event event, Object detail, Node sender) {
      event.preventDefault();
        
      dispatchEvent(new CustomEvent('delete',
          detail: {'model': model}));
    }
}