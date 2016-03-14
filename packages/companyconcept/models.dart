library xpn.models;

import 'package:polymer/polymer.dart';

class Model extends Observable {
  @observable List<String> LIST;
  @observable String type;
  @observable String name;
  @observable String value;
}

class Response extends Model {
  Response() : super() {
    type = "response";
    name = "r1c1";
    value = "?";
    
    LIST = new List();
    LIST.add('Datastore');
    LIST.add('Report');
    LIST.add('?');
  }
}

class Service extends Model {
  Service() : super() {
    type = "service";
    name = "r1c2";
    value = "New Service";
  }
}

class Task extends Model {
  Task() : super() {
    type = "task"; 
    name = "r1c3"; 
    value = "?";
    
    LIST = new List();
    LIST.add('Controls');
    LIST.add('Executes');
    LIST.add('?');
  }
}

class Obj extends Model {
  Obj() : super() {
    type = "object";
    name = "r2c1";
    value = "New Object";
  }
}

class Rule extends Model {  
  @observable String criteria;
  Rule() : super() {
    type = "rule";
    name = "r2c2";
    value = "New Rule";
    criteria = "";
  }
}

class Actor extends Model {
  Actor() : super() {
    type = "actor";
    name = "r2c3";
    value = "New Actor";
  }
}

class Attribute extends Observable {
  @observable String name;
  @observable String value;
  
  Attribute(key,val) {
    name = key;
    value = val;
  }
}

class Message extends Model {
  @observable List<Attribute> attributes;
  Message() : super() {
    type = "message";
    name = "r3c1";
    value = "?";
    
    LIST = new List();
    LIST.add('Create');
    LIST.add('Update');
    LIST.add('Delete');
    LIST.add('?');
    
    attributes = new List();
    attributes.add( new Attribute('New Attribute', '') ); // at least one attribute
  }
}

class Action extends Model {  
  Action() : super() {
    type = "action";
    name = "r3c2";
    value = "New Action";
  }
}

class Request extends Model {
  Request() : super() {
    type = "request";
    name = "r3c3";
    value = "?";
    
    LIST = new List();
    LIST.add('Form');
    LIST.add('?');
  }
}

class Row extends Observable {
}

class TopRow extends Row {
  @observable List<Response> responses = toObservable([]);
  @observable Service service = new Service();
  @observable List<Task> tasks = toObservable([]);
}

class CenterRow extends Row {
  @observable List<Obj> objects = toObservable([]);
  @observable List<Rule> rules = toObservable([]);
  @observable List<Actor> actors = toObservable([]);
}

class BottomRow extends Row {
  @observable List<Message> messages = toObservable([]);
  @observable Action action = new Action();
  @observable List<Request> requests = toObservable([]);
}

class Grid extends Observable {
  @observable List<TopRow> topRows = toObservable([]);
  @observable CenterRow centerRow = new CenterRow();
  @observable List<BottomRow> bottomRows = toObservable([]);
}

final appGrid = new Grid();

TopRow topRow;// = new TopRow();
CenterRow centerRow;// = new CenterRow();
BottomRow bottomRow;// = new BottomRow();

Response response;// = new Response();
Service service;// = new Service();
Task task;// = new Task();
Obj obj;// = new Obj();
Rule rule;// = new Rule();
Actor actor;// = new Actor();
Message message;// = new Message();
Action action;// = new Action();
Request request;// = new Request();