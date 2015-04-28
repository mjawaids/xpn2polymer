// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'models.dart';

/// A Polymer `<design-element>` element.
@CustomTag('design-element')
class DesignElement extends PolymerElement {
  @observable Grid grid = appGrid;
  
  /// Constructor used to create instance of MainApp.
  DesignElement.created() : super.created() {
  }
  
  // Lifecycle methods.
  
  //  Called when an instance of xpn-element is inserted into the DOM.
  attached() {
    super.attached();
  }
} // End of XPNElement