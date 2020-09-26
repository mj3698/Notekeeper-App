class Note{
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Note(this._title,this._date,this._priority,[this._description]);
  Note.withID(this._id,this._title,this._description,this._date,this._priority,);

  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  set title(String newtitle){
    this._title = newtitle;
  }
  set description(String newdescription){
    this._description = newdescription;
  }
  set date(String newdate){
    this._date = newdate;
  }
  set priority(int newpriority){
    this._priority = newpriority;
  }

  Map<String,dynamic> toMap(){
    var map = Map<String,dynamic>();
    if(id!=null){
    map['id'] = this._id;}
    map['title'] = this._title;
    map['description'] = this._description;
    map['date'] = this._date;
    map['priority'] = this._priority;

    return map;
  }

  Note.fromDB(Map<String,dynamic>map){
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._date = map['date'];
    this._priority = map['priority'];
  }
}