import 'package:coffe_shop/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomToggleButton extends StatefulWidget {
  const CustomToggleButton({super.key});

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  List<bool> isSelected = [true, false];
  bool vertical = false; // for rotation
  List<Text> buttons = const [Text('Delivered'), Text('Pick Up')];
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      direction: vertical ? Axis.vertical : Axis.horizontal,
      isSelected: isSelected,
      onPressed: (index) {
        setState(() {
          for (var i = 0; i < isSelected.length; i++) {
            isSelected[i] = i == index;
          }
        });
      },
      color: Colors.black, // unselected item color
      borderRadius: BorderRadius.circular(14.r),
      fillColor: ColorManger.switchColor, // selected item background color
      selectedColor: Colors.white, //selected item color
      constraints: BoxConstraints(
        minHeight: 48.0.h,
        minWidth: 150.0.w,
      ),
      children: buttons,
    );
  }
}
