import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/add_subject/view.dart';
import 'package:untitled28/screens/change_doctor/view.dart';
import 'package:untitled28/screens/create_new_account/view.dart';
import 'package:untitled28/screens/share/my_button.dart';

class HomeForAdminScreen extends StatelessWidget {
   HomeForAdminScreen({Key? key,required this.name,required this.userNumber}) : super(key: key);
String name;
  int userNumber;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 50.h,
          title:  Text("hello Admin $name"),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 80.w),
                      child: Column(
                        children: [
                          MyButton(screen:CreateNewAccount() ,
                            buttonColor: 0xFF2196F3,
                            buttonText: "Create New Account",
                            textColor: 0xFFFFFFFF,
                         //   x: Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewAccount(),)),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          MyButton(screen: const ChangeDoctorScreen(),
                            buttonColor: 0xFF2196F3,
                            buttonText: "Change Doctor",
                            textColor: 0xFFFFFFFF,
                          //  x: Navigator.push(context,MaterialPageRoute(builder: (context) => const ChangeDoctorScreen(),)),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          MyButton(screen:AddSubjectScreen(x:name,y:userNumber) ,
                            buttonColor: 0xFF2196F3,
                            buttonText: "Add new subject",
                            textColor: 0xFFFFFFFF,
                           // x: Navigator.push(context,MaterialPageRoute(builder: (context) =>  AddSubjectScreen(),)),
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
      ),
    );
  }
}
