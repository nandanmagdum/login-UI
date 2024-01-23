import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Widgets {
  static TextFormField textField({
    required String hintText,
    required TextEditingController controller,
  }) =>
      TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      );

  static Container company(
          {required String companyName, required String img_path}) =>
      Container(
        decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
          child: Row(children: [
            Image.asset(
              img_path,
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              companyName,
              style: TextStyle(fontSize: 16.sp),
            ),
          ]),
        ),
      );
}
