class Subject1 {
  late List subjectName;
  late List collage;
  late List section;

  Subject1(Map<String, List> Screen) {
    subjectName = [
      "Data Structure",
      "Data Base",
      "Structure Programming",
      'physics',
      'xdsxfasghjcjbdjsbcsbdhsbcjhdvshjbchjdsbkjbjkdsbkjcbhjdscjhvcdhvachjach zj',

    ];
    collage = [
      'computer science',
      'computer science',
      'computer science',
      'engineering',
      'engineering',
    ];
    section = [
      'computer science',
      'computer science',
      'computer science',
      "electronic",
      "electronic",
    ];
  }
}
class Collage {
  late List collageName;
  Collage(Map<String, List> Screen) {
    collageName=[' Computer & Information Technology',"engineering"," Mass Communication"];
}
}
class Department{

  late List computerDepartment;
  late List engineeringDepartment;
  late List massDepartment;
  Department(Map<String, List> Screen) {

    computerDepartment=["Computer Science",
      "Management Information Systems",
     " Business Administration & Accounting"];
    engineeringDepartment=["Architectural Engineering",
     " Biomedical Engineering",
     " Chemical Engineering",
     " Civil Engineering",
     " Communication & Computer Engineering",
      "Mathematics and Engineering Physics",
      "Power & Electrical Machines Engineering"];
    massDepartment=[" Journalism",
    "Radio and television"
    "Public relations and media"];

  }
}
class Test {
  Collage(Map<String, List> Screen) {
    var Collage = {};
    Collage['name'] = 'Computer & Information Technology';
    //Collage['age'] = 23;
    Collage['course'] = ["Computer Science",
      "Management Information Systems",
      " Business Administration & Accounting"];

    Collage['name'] = 'Mass Communication';
    //Collage['age'] = 23;
    Collage['course'] = [" Journalism",
      "Radio and television"
          "Public relations and media"
    ];

    Collage['name'] = 'engineering';
    //Collage['age'] = 23;
    Collage['course'] = ["Architectural Engineering",
      " Biomedical Engineering",
      " Chemical Engineering",
      " Civil Engineering",
      " Communication & Computer Engineering",
      "Mathematics and Engineering Physics",
      "Power & Electrical Machines Engineering"];

    //Collage['Branch'] = 'Computer Science';
  }
}