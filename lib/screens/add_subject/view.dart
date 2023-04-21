import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/home_doctor/model.dart';
import 'package:untitled28/screens/share/my_button.dart';
import 'package:untitled28/screens/share/my_drop_down_buttom.dart';
import 'package:untitled28/screens/share/my_input.dart';

class AddSubjectScreen extends StatelessWidget {
  AddSubjectScreen({Key? key,required this.x,required this.y}) : super(key: key);
  final userName = TextEditingController();
  final user = TextEditingController();
  final institute = TextEditingController();
  final password = TextEditingController();
  final section = TextEditingController();
  final subjectName = TextEditingController();
  final semester = TextEditingController();
  final session = TextEditingController();
  final model = Subject1({});

  String x;
  int y;
  List<String> listOfYear = ["first", 'second', 'third', 'forth'];
  List<String> listOfInstitute = [
    "computer science",
    'engineering',
    'mass communication',
    'commerce'
  ];
  List<String> listOfSemester = ["first semester", 'second semester'];
  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is removed from the widget tree.
  //   // This also removes the _printLatestValue listener.
  //   myController.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(centerTitle: true, title: const Text('Add Subject')),
      body:
      // FutureBuilder(
      //     future: Dio()
      //         .get("https://obour-institutes-default-rtdb.firebaseio.com/.json"),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         final data = Attendance.fromJson(snapshot.data!.data);

           //   return
        Center(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 30.w, vertical: 20.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                'assets/logo.png',
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            MyInput(validate: (){},
                                myController: subjectName,
                                hintText: 'Subject Name'),
                            SizedBox(
                              height: 20.h,
                            ),
                            MyInput(validate: (){},
                                myController: userName, hintText: "User name"),
                            SizedBox(
                              height: 20.h,
                            ),
                            MyInput(validate: (){},
                                myController: password,
                                hintText: 'Password',
                                isPassword: true),
                            SizedBox(
                              height: 20.h,
                            ),
                            MyDropDownButton(
                              hintText: "Institute",
                              listOfItem: model.collage//data.collage.name,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            MyDropDownButton(
                              hintText: "Section",
                              listOfItem:model.section,// data.collage.section.computerScience,
                            ),
                            // MyInput(myController: section, hintText: 'Section'),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: MyDropDownButton(
                                        hintText: "year",
                                        listOfItem: listOfYear)),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Expanded(
                                    child: MyDropDownButton(
                                        hintText: "Semester",
                                        listOfItem: listOfSemester)),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 50.w),
                              child: MyButton(

                                // scan: FutureBuilder(
                                //   future: Dio().post(
                                //       "https://obour-institutes-default-rtdb.firebaseio.com/.json",
                                //       data: data.subject,options:Options(contentType:"application/json" )  ),
                                //   builder: (context, snapshot) {
                                //     if (subjectName != "" &&
                                //         userName.text != "" &&
                                //         section != ""&&password=="") {
                                //       data.subject.name.add(subjectName.text);
                                //       data.subject.section.add(section.text);
                                //       data.subject.collage.add(institute.text);
                                //       data.subject.year.add("second");
                                //       data.subject.semester.add("first");
                                //         return HomeForAdminScreen(name: x, userNumber: y);
                                //     } else {
                                //       return const SnackBar(content: Text("have something wrong"));
                                //
                                //     }
                                //   },
                                // ),
                                buttonColor: 0xFF2196F3,
                                buttonText: "Edit",
                                textColor: 0xFFFFFFFF,
                              ),
                            )
                          ]),
                    ),
                  ),

              //);
            //} else {
             // return const Center(child: CircularProgressIndicator());
          //  }
          //}
          ),
    );
  }
}
void postData() async {
  Dio dio = Dio();
  String firebaseUrl = 'https://obour-institutes-default-rtdb.firebaseio.com/.json';

  Map<String, dynamic> postData = {
    'name': 'Ahmed',
    'age': 25,
    'email': 'ahmed@example.com',
  };

  String postDataJson = json.encode(postData);

  try {
    Response response = await dio.post(firebaseUrl, data: postDataJson);
    print(response.statusCode);
    print(response.data);
  } catch (error) {
    print(error);
  }
}
// void fetchData() async{
//   var dio =Dio();
//   var response = await dio.post("https://obour-institutes-default-rtdb.firebaseio.com/.json");
// }