import 'dart:ui';

import 'package:exhibition_app/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatelessWidget {
  final BookModel model;
  const DetailScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined),
                ),
              ],
            ),
            SizedBox(height: 25.h),
             Align(
              alignment: Alignment.topCenter,
               child: Container(
                    width: 150.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 1,
                          blurRadius: 12,
                          offset: Offset(0, 2), // 
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(model.img),
                        //fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  
        
             ),
             SizedBox(height: 20.h),
             Text(
              model.title,
              style:Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: 10.h),
              Text(
                "By ${model.author}",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 10.h),
              Container(
                height: 14.h,width: 100.w,decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child:   Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          model.description,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                ),
              ),
          ],
        ),
       
      
      ),
     floatingActionButton: Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.r),),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
            
              height: 50.h,width: 120.w,
              decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(20.r)),
              child: Padding(
                padding:  EdgeInsets.only(top: 11.h),
                child: Text(
                    "Read",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
              ),
              
            ),
            SizedBox(width: 10.w),
            Container(
        
          height: 50.h,width: 120.w,
          decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(20.r)),
          child:  Padding(
              padding:  EdgeInsets.only(top: 11.h),
              child: Text(
                "Play",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          
        ),
         ],
       ),
     ),
      
    );
  }
}