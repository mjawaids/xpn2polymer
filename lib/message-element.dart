// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart'; // show Model;
import 'package:polymer/polymer.dart';

/// A Polymer `<message-element>` element.
@CustomTag('message-element')
class MessageElement extends PolymerElement with Observable {
  @published Message message;
    
  /// Constructor used to create instance of MainApp.
  MessageElement.created() : super.created() {
    polymerCreated();
  }
}