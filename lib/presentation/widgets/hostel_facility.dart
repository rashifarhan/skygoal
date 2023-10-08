import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skygoal/core/config/color_config.dart';

class HostelFaciltyWidget extends StatelessWidget {
  const HostelFaciltyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 31.h,
              child: ListView.separated(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                        height: 31.h,
                        width: 69.w,
                        decoration: BoxDecoration(
                            color: index == 0
                                ? ColorConstants.primaryColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.bed,
                              color: index == 0 ? Colors.white : Colors.black,
                            ),
                            Text(
                              "${4 - index}",
                              style: TextStyle(
                                color: index == 0 ? Colors.white : Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: 5.w,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 137.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  height: 137.h,
                  width: 154.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/unsplash_WQJvWU_HZFo.jpg")),
                      borderRadius: BorderRadius.circular(10.r)),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 10.w,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 175.w),
              child: SizedBox(
                height: 10,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CircleAvatar(
                        radius: 5,
                        backgroundColor: index == 1
                            ? ColorConstants.primaryColor
                            : Colors.grey);
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 5.w,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
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
              
            ),
            Row(
              children: [
                Icon(Icons.location_on),
                Text("Lorem ipsum dolor sit amet, consectetur ", style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),),
      
              ],
            ),
            SizedBox(height: 10.h,),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
            style: Theme.of(context).textTheme.labelSmall,),
            SizedBox(height: 20.h,),
            Text("Facilities",style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 16)),
                  SizedBox(height: 20.h,),
            Column(
              children: [
                Row(
                  children: [
                    Image(image: AssetImage(
                      "assets/images/university 1.png",
                      
                      )),
                    SizedBox(width: 5.w,),
                    Text("College in 400 meters", style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.bathroom,color: Colors.blue,),
                    SizedBox(width: 5.w,),
                    Text("Bathroom:2", style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),),
                  ],
                )
              ],
            ),
            SizedBox(height: 100.h,)      

          ],
        ),
      ),
    );
  }
}
