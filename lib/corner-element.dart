// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart';
import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:observable/observable.dart';

/// A Polymer `<corner-element>` element.
@PolymerRegister('corner-element')
class CornerElement extends PolymerElement {
  @property Model model;
  @property String mode;
  
  /// Constructor used to create instance of corner elements.
  CornerElement.created() : super.created() {
    polymerCreated();
  }
  
  void toggleDialog(Event e, var detail, Node sender) {
    e.preventDefault();
    
    dispatchEvent(new CustomEvent('design', detail: {'model': model}));
  }
}