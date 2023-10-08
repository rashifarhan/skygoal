import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skygoal/core/config/color_config.dart';

PreferredSize commonAppbar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(90.h),
    child: LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;

        // Adjust padding based on screen size
        final appBarPadding = EdgeInsets.symmetric(
            horizontal: screenWidth * 0.0001, vertical: screenHeight * 0.01);
        final titlePadding =
            EdgeInsets.only(left: screenWidth * 0.04, top: screenHeight * 0.6);

        return Column(
          children: [
            AppBar(
              centerTitle: true,
              leading: IconButton(
                icon:Icon(Icons.arrow_back,) ,
                
                onPressed: () {
                  Navigator.pop(context,true);
                },
              ),
              backgroundColor: ColorConstants.primaryColor,
              actions: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.save_alt_rounded,color: Colors.black,),
                        ),
                 )
              ],
              
             
              toolbarHeight: screenHeight * 0.65,
            ),
           
          ],
        );
      },
    ),
  );
}