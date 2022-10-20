

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'colors.dart';
import 'filter.dart';


class Beverages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: backicon,
            )),
        title: Row(
          children: [
            Spacer(),
            Container(
              padding: EdgeInsets.only(right: 35.w),
              child: Text(
                "Beverages",
                style: TextStyle(color: textblack, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Container(
              width: 16.8.h,
              height: 17.85.w,
              child: Image.asset(
                "assets/images/beverages.png",
              ),
            )
          ],
        ),
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w,),
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 15.w,
       
            childAspectRatio: 0.69), 
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(top: 7.52.h,bottom: 7.52.h),
               decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5.h),
                      child: Image.asset("assets/images/can.png"),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.h,left: 15.w),
                  child: Text("Diet Coke",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                  Container(
                    margin: EdgeInsets.only(left: 15.w),
                  child: Text("355ml,Price",
                   style: TextStyle(
                    fontSize: 14.sp,
                    color: Text_14
                  ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 14.h,right: 14.w,left: 15.w),
                  child: Row(children: [

                    Container(
                      child: Text("\$1.99",
                      style: TextStyle(
                    fontSize: 18.sp,
                    color: textblack
                  ),),
                    ),
                    Spacer(),
                    Container(
                      width: 45.67.w,
                      height: 45.67.h,
                      decoration: BoxDecoration(
                        color: iconbg,
                        borderRadius: BorderRadius.circular(15)),
                      child: IconButton(onPressed: () {
                        // Get.to(()=>filter());
                      }, icon: Icon(Icons.add)),
                    )
                  ],),
                )
              ],)
            )
            ),
          ),
        )
      ],),
    );
  }
}
