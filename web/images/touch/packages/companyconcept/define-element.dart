// Copyright (c) 2015, Muhammad Jawaid Shamshad. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'models.dart';
import 'package:observable/observable.dart';

/// A Polymer `<define-element>` element.
// @CustomTag('define-element')
class DefineElement extends PolymerElement {
  @property Grid grid = appGrid; //needed to display on front
  @property String mode;
  @property String showDialog;
  @property Model model;
  
  /// Constructor used to create instance of MainApp.
  DefineElement.created() : super.created() {
  }
  
  // Lifecycle methods.
  
  //  Called when an instance of define-element is inserted into the DOM.
  attached() {
    super.attached();
  }
  
  void design(Event e, var detail, Node sender) {
    e.preventDefault();
    
    model = detail['model'];
    
    if(!(model is Service) && !(model is Actor) && !(model is Task)) {
      showDialog = detail['model'].type;
      $['dialog'].toggle();
    }
  }
  
  void addMessageAttribute(Event e, var detail, Node sender){
    e.preventDefault();
    message = detail['message'];
    message.attributes.add(new Attribute('New Message Attribute', '') );
  }
  
  void add(String path, dynamic item) {
    var detail = item;  // TODO: jugar

    if(detail['model'] is Service)      // Service - Add Top Row
      addTopRow(path, item);
    else if(detail['model'] is Action)  // Action - Add Bottom Row
      addBottomRow(path, item);
    else if(detail['model'] is Obj)     // Object - Add Left Col
      addLeftCol(path, item);
    else if(detail['model'] is Actor)   // Actor - Add Right Col
      addRightCol(path, item);
    else if(detail['model'] is Rule)    // Rule - Add Rule
      addRule(path, item);
  }
  
  void delete(Event e, var detail, Node sender) {
    e.preventDefault();

    if(detail['model'] is Service)      // Service - Delete Top Row
      deleteTopRow(e, detail, sender);
    else if(detail['model'] is Action)  // Action - Delete Bottom Row
      deleteBottomRow(e, detail, sender);
    else if(detail['model'] is Obj)     // Object - Delete Left Col
      deleteLeftCol(e, detail, sender);
    else if(detail['model'] is Actor)   // Actor - Delete Right Col
      deleteRightCol(e, detail, sender);
    else if(detail['model'] is Rule)    // Rule - Delete Rule
      deleteRule(e, detail, sender);
  }
  
  void addTopRow(String path, dynamic item) {
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
  }
  
  void deleteTopRow(Event e, var detail, Node sender) {
    service = detail['model'];

    if(appGrid.topRows.length > 1)
      for(var row in appGrid.topRows)
        if (row.service == service) {
          appGrid.topRows.remove(row);
          break;
        }
  }
  
  void addBottomRow(String path, dynamic item) {
//      e.preventDefault();

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
  }
  
  void deleteBottomRow(Event e, var detail, Node sender) {
    action = detail['model'];
        
    if(appGrid.bottomRows.length > 1)
      for(var row in appGrid.bottomRows)
        if (row.action == action) {
          appGrid.bottomRows.remove(row);
          break;
        }
  }
  
  void addLeftCol(String path, dynamic item) {
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
  }
  
  void deleteLeftCol(Event e, var detail, Node sender) {
    obj = detail['model'];
    
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
  
  void addRightCol(String path, dynamic item) {
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
  }
  
  void deleteRightCol(Event e, var detail, Node sender) {
    actor = detail['model'];
        
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
  
  void addRule(String path, dynamic item) {
    rule = new Rule();
    centerRow.rules.add(rule);
  }
  
  /**
   * 
   */
  void deleteRule(Event e, var detail, Node sender) {
    rule = detail['model'];
    centerRow.rules.remove(rule);
  }

} // End of DefineElement