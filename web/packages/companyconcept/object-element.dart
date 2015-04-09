// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart';
import 'dart:html' show CustomEvent, Event, Node;
import 'package:polymer/polymer.dart';

/// A Polymer `<object-element>` element.
@CustomTag('object-element')
class ObjectElement extends PolymerElement with Observable {
  @published Obj obj;

  /// Constructor used to create instance of MainApp.
  ObjectElement.created() : super.created() {
    polymerCreated();
  }
  
  void addObject(Event event, Object detail, Node sender) {
    event.preventDefault();
      
    dispatchEvent(new CustomEvent('addobject',
        detail: {'obj': obj}));
  }
  
  void deleteObject(Event event, Object detail, Node sender) {
      event.preventDefault();
        
      dispatchEvent(new CustomEvent('deleteobject',
          detail: {'obj': obj}));
    }
}