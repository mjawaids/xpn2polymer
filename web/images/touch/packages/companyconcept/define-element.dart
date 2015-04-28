// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'models.dart';

/// A Polymer `<define-element>` element.
@CustomTag('define-element')
class DefineElement extends PolymerElement {
  @observable Grid grid = appGrid; //new Grid();

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
  DefineElement.created() : super.created() {
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
    appGrid.topRows.add(topRow);
    
    // center row
    centerRow = new CenterRow();
    obj = new Obj();
    centerRow.objects.add( obj );
    rule = new Rule();
    centerRow.rules.add(rule);
    actor = new Actor();
    centerRow.actors.add( actor );
    appGrid.centerRow = centerRow;
    
    // bottom row
    bottomRow = new BottomRow();
    message = new Message();
    bottomRow.messages.add( message );
    action = new Action();
    bottomRow.action = action;
    request = new Request();
    bottomRow.requests.add( request );
    appGrid.bottomRows.add( bottomRow );
  }
  
  void addTopRow(Event e, var detail, Node sender) {
    e.preventDefault();
    
    int i;
    topRow = new TopRow();
    
    // Add Responses
    for(i=0; i<appGrid.topRows[0].responses.length; i++) {
      response = new Response();
      topRow.responses.add( response );
    }
    
    // Add Service
    service = new Service();
    topRow.service = service;
    
    // Add Tasks
    for(i=0; i<appGrid.topRows[0].tasks.length; i++) {
      task = new Task();
      topRow.tasks.add( task );
    }
    
    // Add row in appGrid
    appGrid.topRows.insert( 0, topRow );

    print(appGrid);
  }
  
  void deleteTopRow(Event e, var detail, Node sender) {
    e.preventDefault();
    
    service = detail['service'];
    
    if(appGrid.topRows.length > 1)
      for(var row in appGrid.topRows)
        if (row.service == service) {
          appGrid.topRows.remove(row);
          break;
        }
  }
  
  void addBottomRow(Event e, var detail, Node sender) {
      e.preventDefault();

      int i;
      bottomRow = new BottomRow();
      
      // Add Messages
      for(i=0; i<appGrid.bottomRows[0].messages.length; i++) {
        message = new Message();
        bottomRow.messages.add( message );
      }
      
      // Add Action
      action = new Action();
      bottomRow.action = action;
      
      // Add Requests
      for(i=0; i<appGrid.bottomRows[0].requests.length; i++) {
        request = new Request();
        bottomRow.requests.add( request );
      }
      
      // Add row in appGrid
      appGrid.bottomRows.add( bottomRow );
      
      print(appGrid);
  }
  
  void deleteBottomRow(Event e, var detail, Node sender) {
    e.preventDefault();
    
    action = detail['action'];
        
        if(appGrid.bottomRows.length > 1)
          for(var row in appGrid.bottomRows)
            if (row.action == action) {
              appGrid.bottomRows.remove(row);
              break;
            }
  }
  
  void addLeftCol(Event e, var detail, Node sender) {
    e.preventDefault();

    // Add Responses
    for(var row in appGrid.topRows) {
      response = new Response();
      row.responses.insert(0, response);
    }
    
    // Add Objects
    obj = new Obj();
    centerRow.objects.insert(0, obj);
    
    // Add Messages
    for(var row in appGrid.bottomRows) {
      message = new Message();
      row.messages.insert(0, message);
    }
    
    print(appGrid);
  }
  
  void deleteLeftCol(Event e, var detail, Node sender) {
    e.preventDefault();
    
    obj = detail['obj'];
    
    if(appGrid.topRows[0].responses.length > 1) {
      int i = appGrid.centerRow.objects.indexOf(obj);
      
      // Remove responses
      for(var row in appGrid.topRows) {
        row.responses.removeAt(i);
      }
      
      // Remove object
      appGrid.centerRow.objects.remove(obj);

      // Remove messages
      for(var row in appGrid.bottomRows) {
        row.messages.removeAt(i);
      }
    }
  }
  
  void addRightCol(Event e, var detail, Node sender) {
    e.preventDefault();
    
    // Add Tasks
    for(var row in appGrid.topRows) {
      task = new Task();
      row.tasks.add(task);
    }
    
    // Add Actor
    actor = new Actor();
    centerRow.actors.add(actor);
    
    // Add Requests
    for(var row in appGrid.bottomRows) {
      request = new Request();
      row.requests.add(request);
    }
    
    print(appGrid);
  }
  
  void deleteRightCol(Event e, var detail, Node sender) {
    e.preventDefault();
    
    actor = detail['actor'];
        
    if(appGrid.topRows[0].tasks.length > 1) {
      int i = appGrid.centerRow.actors.indexOf(actor);
      
      // Remove tasks
      for(var row in appGrid.topRows) {
        row.tasks.removeAt(i);
      }
      
      // Remove actor
      appGrid.centerRow.actors.remove(actor);

      // Remove requests
      for(var row in appGrid.bottomRows) {
        row.requests.removeAt(i);
      }
    }
  }
  
  void addRule(Event e, var detail, Node sender) {
    e.preventDefault();
        
    rule = new Rule();
    centerRow.rules.add(rule);
    
    print(appGrid.centerRow.rules.length);
  }
  
  /**
   * 
   */
  void deleteRule(Event e, var detail, Node sender) {
      e.preventDefault();
          
      rule = detail['rule'];
      centerRow.rules.remove(rule);
    }
} // End of XPNElement