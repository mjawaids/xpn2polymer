// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart'; // show Model;
import 'package:polymer/polymer.dart';
import 'package:observable/observable.dart';

/// A Polymer `<request-element>` element.
@PolymerRegister('request-element')
class RequestElement extends PolymerElement {
  @property Request request;
    
  /// Constructor used to create instance of MainApp.
  RequestElement.created() : super.created() {
    polymerCreated();
  }
}