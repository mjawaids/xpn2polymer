// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart';
import 'package:polymer/polymer.dart';

/// A Polymer `<corner-element>` element.
@CustomTag('corner-element')
class CornerElement extends PolymerElement {  
  @published Model model;
//  List<String> get LIST => Model.LIST;
    
  /// Constructor used to create instance of MainApp.
  CornerElement.created() : super.created();
}