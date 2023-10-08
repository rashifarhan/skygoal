import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skygoal/core/config/color_config.dart';
import 'package:skygoal/presentation/screens/home_screen.dart';
import 'package:skygoal/presentation/widgets/about_college.dart';
import 'package:skygoal/presentation/widgets/button.dart';
import 'package:skygoal/presentation/widgets/hostel_facility.dart';
import 'package:skygoal/presentation/widgets/tab_bar.dart';

class CollegeDetailScreen extends StatefulWidget {
  const CollegeDetailScreen({super.key});

  @override
  State<CollegeDetailScreen> createState() => _CollegeDetailScreenState();
}

class _CollegeDetailScreenState extends State<CollegeDetailScreen> 
with SingleTickerProviderStateMixin

{
  
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.primaryColor,
          leading:  IconButton(
            onPressed: () => Navigator.pop(context),
            icon:  Icon(Icons.arrow_back),
            
           
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child:  CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(image: AssetImage("assets/images/saved 1.png"))
                      )
            )
          ],
        ),
        body: Stack(
          children: [
          

            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 271.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/unsplash_e7eqKQkpk_8.jpg"))
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "GHJK Engineering College",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(fontSize: 20),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                height: 70.h,
                                width: 298.w,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 12, fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 74.h,
                            width: 52.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.green),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "4.3",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 25.sp,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
              
                    TabBar(
                      labelStyle: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 12.sp),
                      //controller: tabController,
                      
                      labelColor: Colors.black ,
                      tabs: const[
                        Tab(text: "About College",),
                        Tab(text: "Hostel facility",),
                        Tab(text: "Q & A",),
                        Tab(text: "Events",),
                            
                      ],
                            
                    ),
                      Expanded(
                        child: const TabBarView(
                          physics: ScrollPhysics(),
                          children: [
                          AboutCollegeWidget(),
                           HostelFaciltyWidget(),
                            Center(child: Text("Q & A")),
                             Text("Events"),
                        
                                
                                
                                ],),
                      )
                    
                    
                  
                   
                    
                    
                  ],
                ),
              ),
            ),
              Positioned(
              bottom: 20.h,
              left: 20.w,

              child: PrimaryBtn(btnText: "Apply Now",)),
          ],
        ),
      ),
    );
  }
}
