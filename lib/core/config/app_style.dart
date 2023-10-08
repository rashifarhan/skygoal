
//Style for headlines
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:skygoal/core/config/color_config.dart';

const headLine1 = TextStyle(
  color: Colors.white,
    fontSize: 20, fontWeight: FontWeight.w800, fontFamily: 'Lato');

//Style for headlines
const headLine2 = TextStyle(
  color: Colors.white,
    fontSize: 14, fontWeight: FontWeight.w700, fontFamily: 'Lato');

//Style for general body text
const bodyText = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w300, fontFamily: 'Lato');

const headLineLarge=TextStyle(
  fontSize: 18,fontWeight: FontWeight.w800,fontFamily: "Lato",color: Colors.black

);

const labelMedium=TextStyle(
  fontSize: 14,fontWeight: FontWeight.w700,fontFamily: "Lato",color: Colors.black

);

//Style for general body textmedium
const bodyTextMedium = TextStyle(
    fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Lato');

//Style for text input text
const labelText = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w600, fontFamily: 'Lato');

//style for hint in text inputs
const hintStyle = TextStyle(
    color: ColorConstants.bodyTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontFamily: 'Lato'); 
    const inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
  borderSide: BorderSide(color: Colors.grey, width: 1.0),
);

//Input field border style for enabled state
const enabledBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.grey, width: 1.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

//Input field border style for focused state
const focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: ColorConstants.primaryColor, width: 2.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

//Input field border style for focused state
const focusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

//Input field border style for error state
const errorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 3, color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

//Primary button style
var elvatedPrimaryButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
  elevation: 10,
  textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
  ),
);
   
