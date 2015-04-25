// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';
import 'dart:html';

/// A Polymer `<xpn-element>` element.
@CustomTag('xpn-element')
class XPNElement extends PolymerElement {
  @observable var tab = 0;
  
  /// Constructor used to create instance of MainApp.
  XPNElement.created() : super.created() {
  }
  
} // End of XPNElement