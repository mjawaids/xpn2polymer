// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart'; // show Model;
import 'package:polymer/polymer.dart';

/// A Polymer `<response-element>` element.
@CustomTag('response-element')
class ResponseElement extends PolymerElement with Observable {
  @published Response response;
  @published String mode = "define";
    
  /// Constructor used to create instance of MainApp.
  ResponseElement.created() : super.created() {
    polymerCreated();
  }
}