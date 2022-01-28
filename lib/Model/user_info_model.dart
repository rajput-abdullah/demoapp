/// results : [{"gender":"female","name":{"title":"Ms","first":"Samira","last":"da Conceição"},"location":{"street":{"number":8478,"name":"Rua São Luiz "},"city":"Cabo Frio","state":"Roraima","country":"Brazil","postcode":45145,"coordinates":{"latitude":"-75.2119","longitude":"16.2820"},"timezone":{"offset":"+9:30","description":"Adelaide, Darwin"}},"email":"samira.daconceicao@example.com","login":{"uuid":"d3bedc2d-68ae-438b-9fc9-fb4872665b7d","username":"organiczebra743","password":"sasha","salt":"GO6pHSg9","md5":"dde4505155de6ddcd2d9b5e17bccfa59","sha1":"b13d90bd37baf09243c831b2ffdb9460050e5a2d","sha256":"0dc89bb2a6b6bfc3a4b24f71f7a826fd9fd577b845e08a5c89c1fdf7558b70e7"},"dob":{"date":"1958-10-31T09:35:06.085Z","age":64},"registered":{"date":"2011-05-20T09:35:01.817Z","age":11},"phone":"(13) 3374-8168","cell":"(46) 3532-7343","id":{"name":"","value":null},"picture":{"large":"https://randomuser.me/api/portraits/women/42.jpg","medium":"https://randomuser.me/api/portraits/med/women/42.jpg","thumbnail":"https://randomuser.me/api/portraits/thumb/women/42.jpg"},"nat":"BR"},null]
/// info : {"seed":"ed07d5942f775aa2","results":25,"page":1,"version":"1.3"}

class UserInfoModel {
  UserInfoModel({
      this.results, 
      this.info,});

  UserInfoModel.fromJson(dynamic json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
  }
  List<Results>? results;
  Info? info;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    if (info != null) {
      map['info'] = info?.toJson();
    }
    return map;
  }

}

/// seed : "ed07d5942f775aa2"
/// results : 25
/// page : 1
/// version : "1.3"

class Info {
  Info({
      this.seed, 
      this.results, 
      this.page, 
      this.version,});

  Info.fromJson(dynamic json) {
    seed = json['seed'];
    results = json['results'];
    page = json['page'];
    version = json['version'];
  }
  String? seed;
  dynamic results;
  dynamic page;
  String? version;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['seed'] = seed;
    map['results'] = results;
    map['page'] = page;
    map['version'] = version;
    return map;
  }

}

/// gender : "female"
/// name : {"title":"Ms","first":"Samira","last":"da Conceição"}
/// location : {"street":{"number":8478,"name":"Rua São Luiz "},"city":"Cabo Frio","state":"Roraima","country":"Brazil","postcode":45145,"coordinates":{"latitude":"-75.2119","longitude":"16.2820"},"timezone":{"offset":"+9:30","description":"Adelaide, Darwin"}}
/// email : "samira.daconceicao@example.com"
/// login : {"uuid":"d3bedc2d-68ae-438b-9fc9-fb4872665b7d","username":"organiczebra743","password":"sasha","salt":"GO6pHSg9","md5":"dde4505155de6ddcd2d9b5e17bccfa59","sha1":"b13d90bd37baf09243c831b2ffdb9460050e5a2d","sha256":"0dc89bb2a6b6bfc3a4b24f71f7a826fd9fd577b845e08a5c89c1fdf7558b70e7"}
/// dob : {"date":"1958-10-31T09:35:06.085Z","age":64}
/// registered : {"date":"2011-05-20T09:35:01.817Z","age":11}
/// phone : "(13) 3374-8168"
/// cell : "(46) 3532-7343"
/// id : {"name":"","value":null}
/// picture : {"large":"https://randomuser.me/api/portraits/women/42.jpg","medium":"https://randomuser.me/api/portraits/med/women/42.jpg","thumbnail":"https://randomuser.me/api/portraits/thumb/women/42.jpg"}
/// nat : "BR"

class Results {
  Results({
      this.gender, 
      this.name, 
      this.location, 
      this.email, 
      this.login, 
      this.dob, 
      this.registered, 
      this.phone, 
      this.cell, 
      this.id, 
      this.picture, 
      this.nat,});

  Results.fromJson(dynamic json) {
    gender = json['gender'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    email = json['email'];
    login = json['login'] != null ? Login.fromJson(json['login']) : null;
    dob = json['dob'] != null ? Dob.fromJson(json['dob']) : null;
    registered = json['registered'] != null ? Registered.fromJson(json['registered']) : null;
    phone = json['phone'];
    cell = json['cell'];
    id = json['id'] != null ? Id.fromJson(json['id']) : null;
    picture = json['picture'] != null ? Picture.fromJson(json['picture']) : null;
    nat = json['nat'];
  }
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Login? login;
  Dob? dob;
  Registered? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['gender'] = gender;
    if (name != null) {
      map['name'] = name?.toJson();
    }
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['email'] = email;
    if (login != null) {
      map['login'] = login?.toJson();
    }
    if (dob != null) {
      map['dob'] = dob?.toJson();
    }
    if (registered != null) {
      map['registered'] = registered?.toJson();
    }
    map['phone'] = phone;
    map['cell'] = cell;
    if (id != null) {
      map['id'] = id?.toJson();
    }
    if (picture != null) {
      map['picture'] = picture?.toJson();
    }
    map['nat'] = nat;
    return map;
  }

}

/// large : "https://randomuser.me/api/portraits/women/42.jpg"
/// medium : "https://randomuser.me/api/portraits/med/women/42.jpg"
/// thumbnail : "https://randomuser.me/api/portraits/thumb/women/42.jpg"

class Picture {
  Picture({
      this.large, 
      this.medium, 
      this.thumbnail,});

  Picture.fromJson(dynamic json) {
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }
  String? large;
  String? medium;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['large'] = large;
    map['medium'] = medium;
    map['thumbnail'] = thumbnail;
    return map;
  }

}

/// name : ""
/// value : null

class Id {
  Id({
      this.name, 
      this.value,});

  Id.fromJson(dynamic json) {
    name = json['name'];
    value = json['value'];
  }
  String? name;
  dynamic value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

}

/// date : "2011-05-20T09:35:01.817Z"
/// age : 11

class Registered {
  Registered({
      this.date, 
      this.age,});

  Registered.fromJson(dynamic json) {
    date = json['date'];
    age = json['age'];
  }
  String? date;
  dynamic age;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['age'] = age;
    return map;
  }

}

/// date : "1958-10-31T09:35:06.085Z"
/// age : 64

class Dob {
  Dob({
      this.date, 
      this.age,});

  Dob.fromJson(dynamic json) {
    date = json['date'];
    age = json['age'];
  }
  String? date;
  dynamic age;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    map['age'] = age;
    return map;
  }

}

/// uuid : "d3bedc2d-68ae-438b-9fc9-fb4872665b7d"
/// username : "organiczebra743"
/// password : "sasha"
/// salt : "GO6pHSg9"
/// md5 : "dde4505155de6ddcd2d9b5e17bccfa59"
/// sha1 : "b13d90bd37baf09243c831b2ffdb9460050e5a2d"
/// sha256 : "0dc89bb2a6b6bfc3a4b24f71f7a826fd9fd577b845e08a5c89c1fdf7558b70e7"

class Login {
  Login({
      this.uuid, 
      this.username, 
      this.password, 
      this.salt, 
      this.md5, 
      this.sha1, 
      this.sha256,});

  Login.fromJson(dynamic json) {
    uuid = json['uuid'];
    username = json['username'];
    password = json['password'];
    salt = json['salt'];
    md5 = json['md5'];
    sha1 = json['sha1'];
    sha256 = json['sha256'];
  }
  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uuid'] = uuid;
    map['username'] = username;
    map['password'] = password;
    map['salt'] = salt;
    map['md5'] = md5;
    map['sha1'] = sha1;
    map['sha256'] = sha256;
    return map;
  }

}

/// street : {"number":8478,"name":"Rua São Luiz "}
/// city : "Cabo Frio"
/// state : "Roraima"
/// country : "Brazil"
/// postcode : 45145
/// coordinates : {"latitude":"-75.2119","longitude":"16.2820"}
/// timezone : {"offset":"+9:30","description":"Adelaide, Darwin"}

class Location {
  Location({
      this.street, 
      this.city, 
      this.state, 
      this.country, 
      this.postcode, 
      this.coordinates, 
      this.timezone,});

  Location.fromJson(dynamic json) {
    street = json['street'] != null ? Street.fromJson(json['street']) : null;
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'];
    coordinates = json['coordinates'] != null ? Coordinates.fromJson(json['coordinates']) : null;
    timezone = json['timezone'] != null ? Timezone.fromJson(json['timezone']) : null;
  }
  Street? street;
  String? city;
  String? state;
  String? country;
  dynamic postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (street != null) {
      map['street'] = street?.toJson();
    }
    map['city'] = city;
    map['state'] = state;
    map['country'] = country;
    map['postcode'] = postcode;
    if (coordinates != null) {
      map['coordinates'] = coordinates?.toJson();
    }
    if (timezone != null) {
      map['timezone'] = timezone?.toJson();
    }
    return map;
  }

}

/// offset : "+9:30"
/// description : "Adelaide, Darwin"

class Timezone {
  Timezone({
      this.offset, 
      this.description,});

  Timezone.fromJson(dynamic json) {
    offset = json['offset'];
    description = json['description'];
  }
  String? offset;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['offset'] = offset;
    map['description'] = description;
    return map;
  }

}

/// latitude : "-75.2119"
/// longitude : "16.2820"

class Coordinates {
  Coordinates({
      this.latitude, 
      this.longitude,});

  Coordinates.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }
  String? latitude;
  String? longitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

}

/// number : 8478
/// name : "Rua São Luiz "

class Street {
  Street({
      this.number, 
      this.name,});

  Street.fromJson(dynamic json) {
    number = json['number'];
    name = json['name'];
  }
  dynamic number;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = number;
    map['name'] = name;
    return map;
  }

}

/// title : "Ms"
/// first : "Samira"
/// last : "da Conceição"

class Name {
  Name({
      this.title, 
      this.first, 
      this.last,});

  Name.fromJson(dynamic json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }
  String? title;
  String? first;
  String? last;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['first'] = first;
    map['last'] = last;
    return map;
  }

}