import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/qr_code/view.dart';
import 'package:untitled28/screens/share/my_button.dart';

class ContainerHomeStudent extends StatelessWidget {
  ContainerHomeStudent({Key? key, required this.subjectName,required this.section,required this.collage,required this.screen,required this.name,required this.userName}) : super(key: key);
  String subjectName,collage,section,userName,name;
  Void screen;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(12.r),
            color: Colors.blue,
          ),
          height: 200.h,
          width: 250.w,
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
                    child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child: Text(subjectName,overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(collage, style: const TextStyle(color: Colors.black,fontSize: 16),overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 15.h),
                  Text(section, style: const TextStyle(color: Colors.black,fontSize: 16),overflow: TextOverflow.ellipsis,),
                  const Spacer(),
                  SizedBox(
                    width: 200.w,
                    child: MyButton(screen:QrCodeScreen(subjectName:subjectName,userName: userName,name: name, )  ,
                        buttonColor: 0xFFFFFFFF,
                        buttonText: "Enter",
                        textColor: 0xFF000000),
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
