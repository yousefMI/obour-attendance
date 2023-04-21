import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/home_doctor/component/countainer.dart';
import 'package:untitled28/screens/qr_code/view.dart';

class HomeForstudentScreen extends StatefulWidget {
  HomeForstudentScreen({Key? key, required this.name,required this.collage,required this.section, required this.yearOfStudent})
      : super(key: key);
  String name,collage,section;
  String yearOfStudent;


  @override
  State<HomeForstudentScreen> createState() => _HomeForStudentScreenState();
}

class _HomeForStudentScreenState extends State<HomeForstudentScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  var x;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance
          .collection('subject')
          .where('year',
          isEqualTo: widget.yearOfStudent)
          .get(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {

          return Scaffold(
            appBar: AppBar(
              title: Text("hello ${widget.name}"),
              centerTitle: true,
            ),
            body: Center(
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
                child: ListView.builder(
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => ContainerHomeDoctor(
                    screen: QrCodeScreen(
                      subjectName:snapshot.data!.docs[index]['name'],
                      name: widget.name,
                      userName: widget.name ),
                    //scan(widget.name, widget.userNumber,data.student[widget.userNumber].username),
                    subjectName: snapshot.data!.docs[index]['name'],
                    collage: widget.collage,
                    section: widget.section,
                  ),
                  itemCount: snapshot.data!.size,
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
              appBar: AppBar(
                title: const Text("hello "),
                centerTitle: true,
              ),
              body: const Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
