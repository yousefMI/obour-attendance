import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/home_doctor/model.dart';
import 'package:untitled28/screens/login/view.dart';
import 'package:untitled28/screens/share/my_button.dart';
import 'package:untitled28/screens/share/my_drop_down_buttom.dart';
import 'package:untitled28/screens/share/my_input.dart';

class ChangeDoctorScreen extends StatefulWidget {
  const ChangeDoctorScreen({Key? key}) : super(key: key);

  @override
  State<ChangeDoctorScreen> createState() => _ChangeDoctorScreenState();

}

class _ChangeDoctorScreenState extends State<ChangeDoctorScreen> {
  final model = Subject1({});
  final sectionName = TextEditingController();
  //FirebaseDatabase database = FirebaseDatabase.instance;
  final newDoctor = TextEditingController();
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Change Doctor"),
      ),
      body:
      // FutureBuilder(
      //   future:Dio().get("https://obour-institutes-default-rtdb.firebaseio.com/.json"),
      //   builder: (context, snapshot) {
      //    if (snapshot.hasData) {
      //      final data = Attendance.fromJson(snapshot.data!.data);
       //    return
        Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w),
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
                        height: 60.h,
                      ),
                      MyDropDownButton(
                        hintText: "subject",
                        listOfItem: model.subjectName,
                        isControlInput: true,
                        textInputController: sectionName,
                        itemOfController:model.section
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      MyInput(validate: (){},
                          hintText: "Section",
                          myController: sectionName,
                          write: false),
                      SizedBox(
                        height: 20.h,
                      ),
                        MyDropDownButton(
                        hintText: "New Doctor",
                        listOfItem: model.subjectName//data.doctor.name,
                        //isControlInput: true,
                        //textInputController: sectionName,
                        //  itemOfController: data.subject.section,
                      ),
                     // MyInput(myController: newDoctor, hintText: 'New Doctor'),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.symmetric(horizontal: 50.w),
                        child: MyButton(screen: LoginScreen(),
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
          // return  const Center(child: CircularProgressIndicator());
       // }
        )//},)
    );
  }
}