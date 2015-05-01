// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';
//import 'dart:html';
import 'models.dart';

/// A Polymer `<xpn-element>` element.
@CustomTag('xpn-element')
class XPNElement extends PolymerElement {
  @observable var tab = 0;
  
  /// Constructor used to create instance of MainApp.
  XPNElement.created() : super.created() {
    _addSeedData();
  }
  
  _addSeedData() {
    // ADD TOP ROW
    topRow = new TopRow();

    response = new Response();
    topRow.responses.add( response );
    
    service = new Service();
    topRow.service = service;
    
    task = new Task();
    topRow.tasks.add( task );
    
    appGrid.topRows.add(topRow);
     
    // ADD CENTER ROW
    centerRow = new CenterRow();
    
    obj = new Obj();
    centerRow.objects.add( obj );
    
    rule = new Rule();
    centerRow.rules.add(rule);
    
    actor = new Actor();
    centerRow.actors.add( actor );

    appGrid.centerRow = centerRow;
     
    // ADD BOTTOM ROW
    bottomRow = new BottomRow();
    
    message = new Message();
    bottomRow.messages.add( message );
    
    action = new Action();    
    bottomRow.action = action;
    
    request = new Request();
    bottomRow.requests.add( request );
    appGrid.bottomRows.add( bottomRow );
  }
  
} // End of XPNElement