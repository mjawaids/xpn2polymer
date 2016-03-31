// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart';
import 'package:polymer/polymer.dart';
import 'package:observable/observable.dart';

/// A Polymer `<task-element>` element.
@PolymerRegister('task-element')
class TaskElement extends PolymerElement {
  @property Task task;
    
  /// Constructor used to create instance of MainApp.
  TaskElement.created() : super.created() {
    polymerCreated();
  }
}