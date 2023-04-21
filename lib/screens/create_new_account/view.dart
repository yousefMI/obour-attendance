import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/home_doctor/model.dart';
import 'package:untitled28/screens/login/view.dart';
import 'package:untitled28/screens/share/my_button.dart';
import 'package:untitled28/screens/share/my_drop_down_buttom.dart';
import 'package:untitled28/screens/share/my_input.dart';

class CreateNewAccount extends StatelessWidget {
  CreateNewAccount({
    Key? key,
  }) : super(key: key);

  //final email = TextEditingController();
  final user = TextEditingController();
  final institute = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
 final model = Subject1({});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create New Account"),
      ),
      // body: FutureBuilder(
      //     future: Dio().get(
      //         "https://obour-institutes-default-rtdb.firebaseio.com/.json"),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         final data = Attendance.fromJson(snapshot.data!.data);

       //       return
       body:
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
                          //MyInput(myController: email, hintText: "Email"),
                          SizedBox(
                            height: 20.h,
                          ),
                          MyInput(validate:(){} ,
                              hintText: "User Name",
                              myController: user,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          MyDropDownButton(
                            hintText: "Institute",
                            listOfItem: model.collage,
                          ),
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
                          MyInput(validate: (){},
                              myController: confirmPassword,
                              hintText: 'Confirm password',
                              isPassword: true),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 50.w),
                            child: MyButton(
                              buttonColor: 0xFF2196F3,
                              buttonText: "Edit",
                              textColor: 0xFFFFFFFF,
                              screen: LoginScreen(),
                              // x: Navigator.push(context,MaterialPageRoute(builder: (context) =>  LoginScreen(),)),
                            ),
                          )
                        ]),
                  ),
                ),
             // );
            //} else {
              //return const Center(
               // child: CircularProgressIndicator(),
              //);
          //  }
    ) // }),
    );
  }
}
