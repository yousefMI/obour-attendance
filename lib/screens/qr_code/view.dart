import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled28/screens/login/view.dart';

class QrCodeScreen extends StatefulWidget {
  QrCodeScreen(
      {Key? key,
      required this.userName,
      required this.subjectName,
      required this.name})
      : super(key: key);
  String userName, subjectName, name;

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  var x;

  final qr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true, title: Text("Scan Qr code ${widget.subjectName}")),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 50.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => scan(widget.subjectName, widget.userName),
                  child: const Text("Scanner")),
            ],
          ),
        ),
      ),
    );
  }
  Future scan(name, userName) async {
    try {
      FlutterBarcodeScanner.scanBarcode("#2A99CF", "Cancel", true, ScanMode.QR)
          .then((value) {
        setState(() {
          if (value != "") {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content:
                    Text("hello ${userName + "           " + name}")));
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
          }
        });
      });
    } catch (e) {
      setState(() {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("unable to read Qr Code")));
      });
    }
  }
}
