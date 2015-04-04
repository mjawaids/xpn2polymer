// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'models.dart';

/// A Polymer `<xpn-element>` element.
@CustomTag('xpn-element')
class XPNElement extends PolymerElement {
  @observable Grid grid = new Grid();

  @observable TopRow topRow = new TopRow();
  @observable CenterRow centerRow = new CenterRow();
  @observable BottomRow bottomRow = new BottomRow();
  
  @observable Response response = new Response();
  @observable Service service = new Service();
  @observable Task task = new Task();
  @observable Obj obj = new Obj();
  @observable Rule rule = new Rule();
  @observable Actor actor = new Actor();
  @observable Message message = new Message();
  @observable Action action = new Action();
  @observable Request request = new Request();
  
  /// Constructor used to create instance of MainApp.
  XPNElement.created() : super.created() {
    
  }
  
  // Lifecycle methods.
  
  //  Called when an instance of xpn-element is inserted into the DOM.
  attached() {
    super.attached();
    
    // top row
    topRow = new TopRow();
    response = new Response();
    topRow.responses.add( response );
    service = new Service();
    topRow.service = service;
    task = new Task();
    topRow.tasks.add( task );
    grid.topRows.add(topRow);
    
    // center row
    centerRow = new CenterRow();
    obj = new Obj();
    centerRow.objects.add( obj );
    rule = new Rule();
    centerRow.rules.add(rule);
    actor = new Actor();
    centerRow.actors.add( actor );
    grid.centerRow = centerRow;
    
    // bottom row
    bottomRow = new BottomRow();
    message = new Message();
    bottomRow.messages.add( message );
    action = new Action();
    bottomRow.action = action;
    request = new Request();
    bottomRow.requests.add( request );
    grid.bottomRows.add( bottomRow );

    consolePrint();
  }
  
  void addTopRow(Event e, var detail, Node sender) {
    e.preventDefault();
    
    topRow = new TopRow();
    response = new Response();
    topRow.responses.add( response );
    service = new Service();
    topRow.service = service;
    task = new Task();
    topRow.tasks.add( task );
    grid.topRows.insert( 0, topRow );
    
    consolePrint();
  }
  
  void addBottomRow(Event e, var detail, Node sender) {
      e.preventDefault();

      bottomRow = new BottomRow();
      message = new Message();
      bottomRow.messages.add( message );
      action = new Action();
      bottomRow.action = action;
      request = new Request();
      bottomRow.requests.add( request );
      grid.bottomRows.add( bottomRow );
      
      consolePrint();
    }
  
  void addLeftCol(Event e, var detail, Node sender) {
    e.preventDefault();
    
    for(var row in grid.topRows) {
      response = new Response();
      row.responses.insert(0, response);
    }
    
    obj = new Obj();
    centerRow.objects.insert(0, obj);
    
    for(var row in grid.bottomRows) {
      message = new Message();
      row.messages.insert(0, message);
    }
    
    consolePrint();
  }
  
  void addRightCol(Event e, var detail, Node sender) {
    e.preventDefault();
    
    for(var row in grid.topRows) {
      task = new Task();
      row.tasks.insert(0, task);
    }
    
    actor = new Actor();
    centerRow.actors.insert(0, actor);
    
    for(var row in grid.bottomRows) {
      request = new Request();
      row.requests.insert(0, request);
    }

    consolePrint();
  }

  consolePrint() {
    print('GRID TOP ROWS: ${grid.topRows.length}');
    
    print('GRID CENTER ROW OBJECTS: ${grid.centerRow.objects.length}');
    print('GRID CENTER ROW RULES: ${grid.centerRow.rules.length}');
    print('GRID CENTER ROW ACTORS: ${grid.centerRow.actors.length}');
    
    print('GRID BOTTOM ROWS: ${grid.bottomRows.length}');
  }
  
} // End of XPNElement