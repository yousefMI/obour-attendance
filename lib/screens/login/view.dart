import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/home_admin/view.dart';
import 'package:untitled28/screens/home_doctor/view.dart';
import 'package:untitled28/screens/home_student/view.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key, }) : super(key: key);
  bool seePassword = false;
  bool isPassword = true;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
 late String user = userNameController.text;
 late String pass = passwordController.text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Login"),
          centerTitle: true),
      body:  FutureBuilder(
          future: FirebaseFirestore.instance
              .collection('user')
              .where('username',
              isEqualTo: userNameController.text.trim().toString())
              .get(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Something went wrong')));
            }

            if (snapshot.connectionState ==
                ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            return Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
                EdgeInsetsDirectional.only(top: 30.h, start: 30.w, end: 30.w),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your user name";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      print("the username control is :  ${userNameController.text}");
                      //print("the username is :  $user");
                      print("the pass control is :  ${passwordController.text}");
                    //  print("the password is :  $pass");
                    },
                    controller: userNameController,
                    style: const TextStyle(color: Colors.black),
                    //obscureText: widget.isPassword && widget.seePassword ? true : false,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      labelText: "user name",
                      // hintText: ,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your password";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      print("the username control is :  ${userNameController.text}");
                     // print("the username is :  $user");
                      print("the pass control is :  ${passwordController.text}");
                      //print("the password is :  $pass");
                    },
                    controller: passwordController,
                    style: const TextStyle(color: Colors.black),
                    obscureText: widget.seePassword ? false : true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        labelText: "password",
                        // hintText: ,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        suffixIcon: widget.seePassword
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    widget.seePassword = !widget.seePassword;
                                  });
                                },
                                icon: const Icon(Icons.visibility_off_outlined))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    widget.seePassword = !widget.seePassword;
                                  });
                                },
                                icon: const Icon(Icons.visibility_outlined))),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: 70.w),
                      child: ElevatedButton(
                                child: const Text("Login"),
                                onPressed: () async {
                                  String y;
                                  try {
                                    if (formKey.currentState!.validate()) {

                                      if (passwordController.text.trim().toString() ==
                                          snapshot.data!.docs[0]['password']) {
                                        y = snapshot.data!.docs[0]['type'];
                                        if (y == "admin") {
                                          print("the username control is :  ${userNameController.text}");
                                          // print("the username is :  $user");
                                          print("the pass control is :  ${passwordController.text}");
                                          //print("the password is :  $pass");
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeForAdminScreen(
                                                        name: snapshot.data!
                                                            .docs[0]['name'],
                                                        userNumber: 1),
                                              ));
                                        } else if (y == "doctor") {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeForDoctorScreen(
                                                  name: snapshot.data!.docs[0]
                                                      ['name'],
                                                ),
                                              ));
                                        } else if (y == "student") {
                                          print("the username control is :  ${userNameController.text}");
                                          // print("the username is :  $user");
                                          print("the pass control is :  ${passwordController.text}");
                                          //print("the password is :  $pass");
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeForstudentScreen(
                                                  name: snapshot.data!.docs[0]
                                                      ['name'],
                                                      yearOfStudent: snapshot.data!.docs[0]['year'],
                                                      collage:snapshot.data!.docs[0]['collage'] ,
                                                      section: snapshot.data!.docs[0]['section'],
                                                ),
                                              ));
                                        }
                                      } else {
                                        print("the username control is :  ${userNameController.text}");
                                        // print("the username is :  $user");
                                        print("the pass control is :  ${passwordController.text}");
                                        //print("the password is :  $pass");
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          content: Text(
                                              "fail please enter the correct password"),
                                          backgroundColor: Colors.red,
                                        ));
                                      }
                                    }
                                  } catch (e) {
                                    print("the username control is :  ${userNameController.text}");
                                    // print("the username is :  $user");
                                    print("the pass control is :  ${passwordController.text}");
                                    //print("the password is :  $pass");
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "fail please enter the correct user name"),
                                            backgroundColor: Colors.red));
                                  }
                                }),
                          )]),

              ),
            ),
          ),
        );
  }),
    );
  }
}
