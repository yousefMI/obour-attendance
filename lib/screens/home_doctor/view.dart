import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/home_doctor/component/countainer.dart';
import 'package:untitled28/screens/subject/view.dart';

class HomeForDoctorScreen extends StatefulWidget {
  HomeForDoctorScreen({Key? key,required this.name,}) : super(key: key);
String name;
  //int countOfSubject=1;
  @override
  State<HomeForDoctorScreen> createState() => _HomeForDoctorScreenState();
}

class _HomeForDoctorScreenState extends State<HomeForDoctorScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return  FutureBuilder(future: Dio().get("https://obour-institutes-default-rtdb.firebaseio.com/.json"),
    //     builder:(context, snapshot) {
    //       if(snapshot.hasData){
    //         final data = Attendance.fromJson(snapshot.data!.data);
    //         List<int> subjectIndex = data.subject.name.asMap().entries.where((entry) =>
    //         data.subject.doctor[entry.key] == widget.name
    //         ).map((entry) => entry.key).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("hello Doctor ${widget.name}"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(vertical: 20.h),
          child:

          FutureBuilder(future:FirebaseFirestore.instance
              .collection('subject')
              .where('doctor', isEqualTo: widget.name.toString())
              .get() ,
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }

              return ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  final subjectName = snapshot.data!.docs[index]['name'];
                  final collage = snapshot.data!.docs[index]['collage'];
                  final section = snapshot.data!.docs[index]['section'];
                  return ContainerHomeDoctor(
                    screen: SubjectScreen(subjectName: subjectName),
                    subjectName: subjectName,
                    collage: collage,
                    section: section,
                  );
                },
                itemCount: snapshot.data!.size,
              );
            }
          ),
        ),
      ),
    );
  }
}
            // child: ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     final subject = data.subject;
            //     final doctorName = subject.doctor[index];
            //     if (doctorName != widget.name) {
            //       return SizedBox.shrink(); // Return an empty widget if the doctor's name doesn't match
            //     }
            //     final subjectName = subject.name[index];
            //     final collage = subject.collage[index];
            //     final section = subject.section[index];
            //     return ContainerHomeDoctor(
            //       screen: SubjectScreen(subjectName: subjectName),
            //       subjectName: subjectName,
            //       collage: collage,
            //       section: section,
            //     );
            //   },
            //   itemCount: data.subject.name.where((subjectName) => data.subject.doctor[data.subject.name.indexOf(subjectName)] == widget.name).length,
            // ),
            // child: ListView.builder(
            //  // scrollDirection: Axis.vertical,
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) => ContainerHomeDoctor(
            //     screen: SubjectScreen(subjectName: data.subject.name[index]) ,//data.doctor[widget.userNumber].subject.name[index]),
            //       subjectName:data.subject.name.elementAt(data.subject.doctor.indexOf(widget.name)),
            //       collage: data.subject.collage[index],
            //       section: data.subject.section[index],
            //   ),
            //   itemCount: data.subject.name.length,
            // ),
        //  ),
          //    ),
        //);
         // }
        //  else{
          //  return Scaffold(appBar: AppBar(
           //   title: const Text("hello Doctor "),
            //  centerTitle: true,
           // ) ,body: const Center(child: CircularProgressIndicator()));
        //  }
        //},

    //);
  //}
//}
