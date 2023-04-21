class Attendance {
  Attendance({
    required this.admin,
    required this.collage,
    required this.doctor,
    required this.student,
    required this.subject,
    required this.users,
  });
  late final Admin admin;
  late final Collage collage;
  late final Doctor doctor;
  late final Student student;
  late final Subject subject;
  late final Users users;

  Attendance.fromJson(Map<String, dynamic> json){
    admin = Admin.fromJson(json['admin']);
    collage = Collage.fromJson(json['collage']);
    doctor = Doctor.fromJson(json['doctor']);
    student = Student.fromJson(json['student']);
    subject = Subject.fromJson(json['subject']);
    users = Users.fromJson(json['users']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['admin'] = admin.toJson();
    data['collage'] = collage.toJson();
    data['doctor'] = doctor.toJson();
    data['student'] = student.toJson();
    data['subject'] = subject.toJson();
    data['users'] = users.toJson();
    return data;
  }
}

class Admin {
  Admin({
    required this.first,
    required this.second,
  });
  late final First first;
  late final Second second;

  Admin.fromJson(Map<String, dynamic> json){
    first = First.fromJson(json['first']);
    second = Second.fromJson(json['second']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['first'] = first.toJson();
    data['second'] = second.toJson();
    return data;
  }
}

class First {
  First({
    required this.name,
    required this.password,
    required this.username,
  });
  late final String name;
  late final String password;
  late final String username;

  First.fromJson(Map<String, dynamic> json){
    name = json['name'];
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['password'] = password;
    data['username'] = username;
    return data;
  }
}

class Second {
  Second({
    required this.name,
    required this.password,
    required this.username,
  });
  late final String name;
  late final String password;
  late final String username;

  Second.fromJson(Map<String, dynamic> json){
    name = json['name'];
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['password'] = password;
    data['username'] = username;
    return data;
  }
}

class Collage {
  Collage({
    required this.first,
    required this.forth,
    required this.second,
    required this.third,
  });
  late final First first;
  late final Forth forth;
  late final Second second;
  late final Third third;

  Collage.fromJson(Map<String, dynamic> json){
    first = First.fromJson(json['first']);
    forth = Forth.fromJson(json['forth']);
    second = Second.fromJson(json['second']);
    third = Third.fromJson(json['third']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['first'] = first.toJson();
    data['forth'] = forth.toJson();
    data['second'] = second.toJson();
    data['third'] = third.toJson();
    return data;
  }
}

class Forth {
  Forth({
    required this.name,
    required this.section,
  });
  late final String name;
  late final List<String> section;

  Forth.fromJson(Map<String, dynamic> json){
    name = json['name'];
    section = List.castFrom<dynamic, String>(json['section']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['section'] = section;
    return data;
  }
}

class Third {
  Third({
    required this.name,
    required this.section,
  });
  late final String name;
  late final List<String> section;

  Third.fromJson(Map<String, dynamic> json){
    name = json['name'];
    section = List.castFrom<dynamic, String>(json['section']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['section'] = section;
    return data;
  }
}

class Doctor {
  Doctor({
    required this.first,
    required this.second,
  });
  late final First first;
  late final Second second;

  Doctor.fromJson(Map<String, dynamic> json){
    first = First.fromJson(json['first']);
    second = Second.fromJson(json['second']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['first'] = first.toJson();
    data['second'] = second.toJson();
    return data;
  }
}

class Student {
  Student({
    required this.first,
    required this.second,
  });
  late final First first;
  late final Second second;

  Student.fromJson(Map<String, dynamic> json){
    first = First.fromJson(json['first']);
    second = Second.fromJson(json['second']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['first'] = first.toJson();
    data['second'] = second.toJson();
    return data;
  }
}

class Subject {
  Subject({
    required this.fifth,
    required this.first,
    required this.forth,
    required this.second,
    required this.third,
  });
  late final Fifth fifth;
  late final First first;
  late final Forth forth;
  late final Second second;
  late final Third third;

  Subject.fromJson(Map<String, dynamic> json){
    fifth = Fifth.fromJson(json['fifth']);
    first = First.fromJson(json['first']);
    forth = Forth.fromJson(json['forth']);
    second = Second.fromJson(json['second']);
    third = Third.fromJson(json['third']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['fifth'] = fifth.toJson();
    data['first'] = first.toJson();
    data['forth'] = forth.toJson();
    data['second'] = second.toJson();
    data['third'] = third.toJson();
    return data;
  }
}

class Fifth {
  Fifth({
    required this.collage,
    required this.doctor,
    required this.name,
    required this.section,
    required this.semester,
    required this.year,
  });
  late final String collage;
  late final String doctor;
  late final String name;
  late final String section;
  late final String semester;
  late final String year;

  Fifth.fromJson(Map<String, dynamic> json){
    collage = json['collage'];
    doctor = json['doctor'];
    name = json['name'];
    section = json['section'];
    semester = json['semester'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['collage'] = collage;
    data['doctor'] = doctor;
    data['name'] = name;
    data['section'] = section;
    data['semester'] = semester;
    data['year'] = year;
    return data;
  }
}

class Users {
  Users({
    required this.admin1,
    required this.admin2,
    required this.doctor1,
    required this.doctor2,
    required this.student1,
    required this.student2,
  });
  late final Admin1 admin1;
  late final Admin2 admin2;
  late final Doctor1 doctor1;
  late final Doctor2 doctor2;
  late final Student1 student1;
  late final Student2 student2;

  Users.fromJson(Map<String, dynamic> json){
    admin1 = Admin1.fromJson(json['admin1']);
    admin2 = Admin2.fromJson(json['admin2']);
    doctor1 = Doctor1.fromJson(json['doctor1']);
    doctor2 = Doctor2.fromJson(json['doctor2']);
    student1 = Student1.fromJson(json['student1']);
    student2 = Student2.fromJson(json['student2']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['admin1'] = admin1.toJson();
    data['admin2'] = admin2.toJson();
    data['doctor1'] = doctor1.toJson();
    data['doctor2'] = doctor2.toJson();
    data['student1'] = student1.toJson();
    data['student2'] = student2.toJson();
    return data;
  }
}

class Admin1 {
  Admin1({
    required this.name,
    required this.password,
    required this.type,
    required this.username,
  });
  late final String name;
  late final String password;
  late final String type;
  late final String username;

  Admin1.fromJson(Map<String, dynamic> json){
    name = json['name'];
    password = json['password'];
    type = json['type'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['password'] = password;
    data['type'] = type;
    data['username'] = username;
    return data;
  }
}

class Admin2 {
  Admin2({
    required this.name,
    required this.password,
    required this.type,
    required this.username,
  });
  late final String name;
  late final String password;
  late final String type;
  late final String username;

  Admin2.fromJson(Map<String, dynamic> json){
    name = json['name'];
    password = json['password'];
    type = json['type'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['password'] = password;
    data['type'] = type;
    data['username'] = username;
    return data;
  }
}

class Doctor1 {
  Doctor1({
    required this.name,
    required this.password,
    required this.type,
    required this.username,
  });
  late final String name;
  late final String password;
  late final String type;
  late final String username;

  Doctor1.fromJson(Map<String, dynamic> json){
    name = json['name'];
    password = json['password'];
    type = json['type'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['password'] = password;
    data['type'] = type;
    data['username'] = username;
    return data;
  }
}

class Doctor2 {
  Doctor2({
    required this.name,
    required this.password,
    required this.type,
    required this.username,
  });
  late final String name;
  late final String password;
  late final String type;
  late final String username;

  Doctor2.fromJson(Map<String, dynamic> json){
    name = json['name'];
    password = json['password'];
    type = json['type'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['password'] = password;
    data['type'] = type;
    data['username'] = username;
    return data;
  }
}

class Student1 {
  Student1({
    required this.name,
    required this.password,
    required this.type,
    required this.username,
  });
  late final String name;
  late final String password;
  late final String type;
  late final String username;

  Student1.fromJson(Map<String, dynamic> json){
    name = json['name'];
    password = json['password'];
    type = json['type'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['password'] = password;
    data['type'] = type;
    data['username'] = username;
    return data;
  }
}

class Student2 {
  Student2({
    required this.name,
    required this.passsword,
    required this.type,
    required this.username,
  });
  late final String name;
  late final String passsword;
  late final String type;
  late final String username;

  Student2.fromJson(Map<String, dynamic> json){
    name = json['name'];
    passsword = json['passsword'];
    type = json['type'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['passsword'] = passsword;
    data['type'] = type;
    data['username'] = username;
    return data;
  }
}