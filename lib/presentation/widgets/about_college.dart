import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutCollegeWidget extends StatelessWidget {
  const AboutCollegeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Description",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 14,
                  ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Location",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 184.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/Background.jpg"))),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Student Review",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.h, // Provide a height constraint
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/unsplash_71NgiXcdTzE.jpg")),
                            
                            borderRadius: BorderRadius.circular(10.r)),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20.w,
                    ),
                  ),
                ),
                Container(
                    height: 50.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10.r)),
                        child: Text("+12",style: Theme.of(context).textTheme.titleSmall,),
                        )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Card(
              elevation: 5,
              shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
              child: Container(
                padding: EdgeInsets.all(10.w),
                height: 140.h,
                width: 368.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Arun",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600,fontSize: 12),),
                        const Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
            
                          ],
                        ),
                        
                  ],
                ),
              ),
            ),
            SizedBox(height: 100.h,)
          ],
        ),
      ),
    );
  }
}
