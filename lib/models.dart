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
  Rule() : super() {
    type = "rule";
    name = "r2c2";
    value = "New Rule";
  }
}

class Actor extends Model {
  Actor() : super() {
    type = "actor";
    name = "r2c3";
    value = "New Actor";
  }
}

class Message extends Model {
  Message() : super() {
    type = "message";
    name = "r3c1";
    value = "?";
    
    LIST = new List();
    LIST.add('Create');
    LIST.add('Update');
    LIST.add('Delete');
    LIST.add('?');
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

@observable TopRow topRow;// = new TopRow();
@observable CenterRow centerRow;// = new CenterRow();
@observable BottomRow bottomRow;// = new BottomRow();

@observable Response response;// = new Response();
@observable Service service;// = new Service();
@observable Task task;// = new Task();
@observable Obj obj;// = new Obj();
@observable Rule rule;// = new Rule();
@observable Actor actor;// = new Actor();
@observable Message message;// = new Message();
@observable Action action;// = new Action();
@observable Request request;// = new Request();