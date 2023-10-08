import 'package:flutter/material.dart';
import 'package:skygoal/core/config/color_config.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn({Key? key, required this.btnText, })
      : super(key: key);
  final String btnText;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        
      },
      style: getBtnStyle(context),
      child: Text(
        btnText,
        style: const TextStyle(fontSize: 18.00),
      ),
    );
  }

  getBtnStyle(context) => ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: ColorConstants.primaryColor,
      fixedSize: Size(MediaQuery.of(context).size.width - 40, 47),
      textStyle: const TextStyle(fontWeight: FontWeight.bold));
}