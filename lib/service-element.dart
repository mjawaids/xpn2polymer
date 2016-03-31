// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart'; // show Model;
import 'dart:html' show CustomEvent, Event, Node;
import 'package:polymer/polymer.dart';
import 'package:observable/observable.dart';

/// A Polymer `<service-element>` element.
@PolymerRegister('service-element')
class ServiceElement extends PolymerElement {
  @property Service service;

  /// Constructor used to create instance of MainApp.
  ServiceElement.created() : super.created() {
    polymerCreated();
  }
  
  void addService(Event event, Object detail, Node sender) {
    event.preventDefault();
      
    dispatchEvent(new CustomEvent('addservice',
        detail: {'service': service}));
  }
  
  void deleteService(Event event, Object detail, Node sender) {
      event.preventDefault();
        
      dispatchEvent(new CustomEvent('deleteservice',
          detail: {'service': service}));
    }
}