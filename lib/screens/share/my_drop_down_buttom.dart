import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDropDownButton extends StatefulWidget {
  MyDropDownButton(
      {Key? key,
      required this.hintText,
      required this.listOfItem,
      this.isControlInput = false,
      this.textInputController,
        this.selectedValue,
      this.itemOfController = const []})
      : super(key: key);
  String hintText;
  List listOfItem;
  bool isControlInput;
  TextEditingController? textInputController;
  List itemOfController;
  String? selectedValue;

  @override
  State<MyDropDownButton> createState() => _MyDropDownButtomState();
}



class _MyDropDownButtomState extends State<MyDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.black87)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(isExpanded: true,
          //alignment: AlignmentDirectional.center,
          hint: Text("  ${widget.hintText}"),
          borderRadius: BorderRadius.circular(12.r),
          value: widget.selectedValue,
          items: widget.listOfItem.map((item) {

            return DropdownMenuItem(
              value: item,
              child: Text("  $item",overflow: TextOverflow.ellipsis,),
            );
          }).toList(),
          onChanged: (newvalue) {
            setState(() {
              widget.selectedValue = newvalue.toString();
              widget.isControlInput
                  ? widget.textInputController!.text = widget.itemOfController
                      .elementAt(widget.listOfItem.indexOf(widget.selectedValue,))
                  : null;
            });
          },
        ),
      ),
    );
  }
}