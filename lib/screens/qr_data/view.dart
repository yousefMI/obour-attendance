import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/qr_genetate/view.dart';
import 'package:untitled28/screens/share/my_button.dart';

class QrCodeNumberOfLectureScreen extends StatefulWidget {
  QrCodeNumberOfLectureScreen({Key? key, required this.subjectName})
      : super(key: key);
  String subjectName;

  @override
  State<QrCodeNumberOfLectureScreen> createState() => _QrCodeNumberOfLectureScreenState();
}

class _QrCodeNumberOfLectureScreenState extends State<QrCodeNumberOfLectureScreen> {
  final numberOfLecture = TextEditingController();

   String y="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Enter the Lecture Number"), centerTitle: true),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        MyButton(screen:QrCodeGenetation(
            subjectName: widget.subjectName, numberOfLecture: y) ,
            buttonColor: 0xFF2196F3,
            buttonText: "Generate qr code",
            textColor: 0xFFFFFFFF,
            ) ,
        SizedBox(height: 20.h,),
        TextFormField(
          onChanged: (value) {
            setState(() {
              y=value;
            });
          },
          controller: numberOfLecture ,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
              fillColor: Colors.grey.shade100,
              filled: true,
              labelText:"number of lecture" ,
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
      ]),
    );
  }
}
// Future<void> _createExcel(x) async
// {
//   // create a new Excel workbook
//   final Workbook workbook = Workbook();
//
//   // add a new worksheet to the workbook
//   final Worksheet sheet = workbook.worksheets[0];
//
//   // set some values in the worksheet
//   sheet.getRangeByName('A1').setText('Name');
//   sheet.getRangeByName('A2').setText('John');
//   sheet.getRangeByName('A3').setText('Jane');
//   // add data to the worksheet
//   var data;
//   for (int i = 0; i < data.length; i++) {
//     final Map<String, dynamic> item = data[i];
//     sheet.getRangeByName('A${i + 2}').setText(item['name']);
//   }
  
  // save the workbook to a file
//   final List<int> bytes = workbook.saveAsStream();
//
// final String fileName = "$x.xlsx";
// final String path = await FileSaveHelper.saveAndLaunchFile(bytes, fileName);
//   //final String path = await FileSaveHelper.saveAndLaunchFile(bytes, '$x.xlsx');
// }