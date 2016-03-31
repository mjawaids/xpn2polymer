library xpn.models;

import 'package:observable/observable.dart';

class Model extends Observable {
  List<String> LIST;
  String type;
  String name;
  String value;
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
  String criteria;
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
  String name;
  String value;
  
  Attribute(key,val) {
    name = key;
    value = val;
  }
}

class Message extends Model {
  List<Attribute> attributes;
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
  List<Response> responses = new List();
  Service service = new Service();
  List<Task> tasks = new List();
}

class CenterRow extends Row {
  List<Obj> objects = new List();
  List<Rule> rules = new List();
  List<Actor> actors = new List();
}

class BottomRow extends Row {
  List<Message> messages = new List();
  Action action = new Action();
  List<Request> requests = new List();
}

class Grid extends Observable {
  List<TopRow> topRows = new List();
  CenterRow centerRow = new CenterRow();
  List<BottomRow> bottomRows = new List();
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