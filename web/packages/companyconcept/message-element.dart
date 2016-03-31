// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'models.dart'; // show Model;
import 'package:polymer/polymer.dart';
import 'dart:html' show CustomEvent, Event, Node;
import 'package:template_binding/template_binding.dart' as tb;
import 'package:observable/observable.dart';

/// A Polymer `<message-element>` element.
@PolymerRegister('message-element')
class MessageElement extends PolymerElement {
  @property Message message;
  @property List<Attribute> attribs = new List();
  @property Attribute att;
    
  /// Constructor used to create instance of MainApp.
  MessageElement.created() : super.created() {
    polymerCreated();
  }
  
  attached() {
    att = new Attribute('', '');
    attribs.add(att);
    message.attributes = attribs;
  }
  
  void addAttribute(Event event, Object detail, Node sender) {
    att = new Attribute('', '');
    attribs.add(att);
  }
  
  void deleteAttribute(Event event, Object detail, Node sender) {
    // See for details: 
    //    http://stackoverflow.com/questions/30079141/dart-polymer-removing-element-from-list
    
    tb.TemplateInstance ti = tb.nodeBind(event.target).templateInstance; 
    var value = ti.model.value as Attribute;
    attribs.remove(value);
  }
}