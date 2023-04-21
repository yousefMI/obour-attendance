import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrCodeGenetation extends StatefulWidget {
  QrCodeGenetation(
      {Key? key, required this.subjectName, required this.numberOfLecture})
      : super(key: key);
  String subjectName;
  String numberOfLecture;

  @override
  State<QrCodeGenetation> createState() => _QrCodeGenetationState();
}

class _QrCodeGenetationState extends State<QrCodeGenetation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Qr Code")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          BarcodeWidget(
            data: "${widget.subjectName} Lecture ${widget.numberOfLecture}",
            barcode: Barcode.qrCode(),
            height: 700.h,
            width: 300.w,
          )
        ]),
      ),
    );
  }
}