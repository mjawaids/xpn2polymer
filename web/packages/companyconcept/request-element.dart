// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart'; // show Model;
import 'package:polymer/polymer.dart';

/// A Polymer `<request-element>` element.
@CustomTag('request-element')
class RequestElement extends PolymerElement with Observable {
  @published Request request;
    
  /// Constructor used to create instance of MainApp.
  RequestElement.created() : super.created() {
    polymerCreated();
  }
}