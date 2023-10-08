import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skygoal/core/config/color_config.dart';
import 'package:skygoal/data/data.dart';
import 'package:skygoal/presentation/screens/college_detail_screen.dart';
import 'package:skygoal/presentation/widgets/bottom_nav_bar.dart';
import 'package:skygoal/presentation/widgets/common_header.dart';
import 'package:skygoal/presentation/widgets/radio_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.scaffoldBackgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const HeaderWidget(),
          ValueListenableBuilder(
            valueListenable: showColleges,
            builder: (context, value, child) {
              if (value == false) {
                return bodyWidget();
              } else {
                return collegeGridWidget();
              }
            },
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }

  Widget bodyWidget() {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.all(20.w),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return UnconstrainedBox(
            child: GestureDetector(
              onTap: () {
                showBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0))),
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      height: 390.h,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sort by",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge,
                              ),
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: SvgPicture.asset("assets/images/Frame 11.svg"))
                             
                            ],
                          ),
                          SizedBox(height: 10.h,),
                          const Divider(
                            height: 3,
                            color: ColorConstants.deviderColor,
                            thickness: 0,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return RadioWidget(index: index);
                            },
                            itemCount: qualification.length,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                width: 420.w,
                height: 158.h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15),bottomLeft: Radius.circular(15)),
                
                  image:  DecorationImage(
                    fit: BoxFit.cover,
                    
                      image:gridImages[index]),
                  color: ColorConstants.primaryColor,

                 
                ),
                
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 20.h,
        ),
        itemCount: 3,
      ),
    );
  }

  Widget collegeGridWidget() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 27.h,
                width: 135.w,
                decoration: BoxDecoration(
                   border: Border.all(),
                    
                    borderRadius: BorderRadius.circular(5.w)),
                child: Center(
                  child: Text(
                    "MVSH Engineering college",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 10.sp,fontWeight: FontWeight.w500,color: Colors.black),
                  ),
                ),
              ),
              Container(
                height: 27.h,
                width: 133.w,
                decoration: BoxDecoration(
                  border: Border.all(),
                    
                    borderRadius: BorderRadius.circular(5.w)),
                child:  Center(child: Text("MVSH Engineering college", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 10.sp,fontWeight: FontWeight.w500,color: Colors.black),)),
              ),
              Container(
                height: 27.h,
                width: 133.w,
                decoration: BoxDecoration(
                   border: Border.all(),
                    
                    borderRadius: BorderRadius.circular(5.w)),
                child:  Center(child: Text("MVSH Engineering college", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 10.sp,fontWeight: FontWeight.w500,color: Colors.black),)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CollegeDetailScreen(),)),
          child: Card(
          
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.w)),
            elevation: 8,
            child: Stack(
              children: [
                Container(
                  width: 380.w,
                  height: 250.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.w), color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 116.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.w),
                                topLeft: Radius.circular(20.w)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:AssetImage("assets/images/unsplash_Ucr4Yp-t364.jpg")),
                            color: Colors.black),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.w),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "GHJK Engineering College",
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                                Container(
                                  height: 22.h,
                                  width: 52.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.green),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "4.3",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 16.sp,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: 207.w,
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w600),
                                    )),
                                Container(
                                  width: 78.w,
                                  height: 22.h,
                                  decoration: BoxDecoration(
                                    color: ColorConstants.primaryColor,
                                    borderRadius: BorderRadius.circular(5.w),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Apply Now",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontSize: 10),
                                  )),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Divider(
                              height: 3,
                              color: ColorConstants.deviderColor,
                              thickness: 0,
                            ),
                            SizedBox(height: 2.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset("assets/images/like 1.png"),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontSize: 9, fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.remove_red_eye,color: Colors.grey,),
                                    Text(
                                      "468+",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w600),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    
                    
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.share,color: Colors.black,),
                      ),
                      SizedBox(width: 270.w,),
                       const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(image: AssetImage("assets/images/saved 1.png"))
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
