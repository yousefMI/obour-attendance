import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/login/view.dart';
import 'package:untitled28/screens/qr_data/view.dart';
import 'package:untitled28/screens/share/my_button.dart';

class SubjectScreen extends StatelessWidget {
  SubjectScreen({Key? key, required this.subjectName,}) : super(key: key);
  String subjectName;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subjectName), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  ),
                  SizedBox(height: 50.h,),
                  Padding(
                    padding:  EdgeInsetsDirectional.symmetric(horizontal: 80.w),
                    child: Column(
                      children: [
                        MyButton(screen:  QrCodeNumberOfLectureScreen(subjectName: subjectName),
                          buttonColor: 0xFF2196F3,
                          buttonText: "Attendance QR code",
                          textColor: 0xFFFFFFFF,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        MyButton(screen:LoginScreen() ,
                          buttonColor: 0xFF2196F3,
                          buttonText: "Attendance manually",
                          textColor: 0xFFFFFFFF,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        MyButton(
                          screen: LoginScreen(),
                          buttonColor: 0xFF2196F3,
                          buttonText: "Show attendance sheet",
                          textColor: 0xFFFFFFFF,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}