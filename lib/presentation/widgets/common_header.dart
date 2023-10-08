import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skygoal/core/config/color_config.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            
            height: 225.h,
            width: double.infinity,
            decoration: BoxDecoration(
              
                color: ColorConstants.primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Find Your own way",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "Search in 600 colleges around",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                       Image.asset("assets/images/Group.png")
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 53.h,
                        width: 310.w,
                        child: SearchBar(
                          hintText: "Search for colleges,school..",
                          hintStyle: const MaterialStatePropertyAll(
                              TextStyle(color: ColorConstants.hintTextColor)),
                          leading: const Icon(
                            Icons.search,
                            color: ColorConstants.prefixIconColor,
                          ),
                          shape: MaterialStatePropertyAll(
                              ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.r))),
                        ),
                      ),
                      Container(
                        height: 53.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                            color: ColorConstants.textFieldBackground,
                            borderRadius: BorderRadius.circular(15.r)),
                        child: const Icon(Icons.mic),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
  }
}