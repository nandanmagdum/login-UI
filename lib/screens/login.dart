import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reponsive_ui/common_widgets/common_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String animatedText = '';
  String text = "Welcome Back !";
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    startTyping();
  }

  void startTyping() {
    const duration = Duration(milliseconds: 300);
    Timer.periodic(duration, (timer) {
      setState(() {
        animatedText = text.substring(0, currentIndex);
        currentIndex++;
        if (currentIndex > text.length) {
          currentIndex = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(
                    'assets/img.webp',
                    height: MediaQuery.of(context).size.height * 0.25.h,
                    width: MediaQuery.of(context).size.width * 0.9.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  animatedText,
                  style:
                      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Today is a new day. It's your day. You shape it.",
                  style: TextStyle(fontSize: 16.sp),
                ),
                Text(
                  "Sign in to start managing your projects.",
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 18.sp),
                ),
                SizedBox(
                  height: 7.h,
                ),
                SizedBox(
                  height: 50.h,
                  child: Widgets.textField(
                      hintText: "Example@gmail.com",
                      controller: emailController),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 18.sp),
                ),
                SizedBox(
                  height: 7.h,
                ),
                SizedBox(
                  height: 50.h,
                  child: Widgets.textField(
                      hintText: "At least 8 characters",
                      controller: passwordController),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue, fontSize: 16.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black87)),
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Text("  Or sign in with  "),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Widgets.company(
                        companyName: "Google", img_path: "assets/google.png"),
                    Widgets.company(
                        companyName: "Facebook",
                        img_path: 'assets/facebook.png')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
