// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart';
import 'package:polymer/polymer.dart';

/// A Polymer `<task-element>` element.
@CustomTag('task-element')
class TaskElement extends PolymerElement with Observable {  
  @published Task task;
    
  /// Constructor used to create instance of MainApp.
  TaskElement.created() : super.created() {
    polymerCreated();
  }
}