import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assests/Intersect1.png',
                color: Color.fromARGB(255, 93, 178, 247),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assests/Intersect 2.png',
                color: Color.fromARGB(255, 89, 179, 252),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 165.h, left: 33.w, right: 16.w),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome\nBack!",
                        style: TextStyle(
                            fontSize: 32.sp, fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        label: Text(
                          "Email",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 115, 115, 115)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 86, 85, 85),
                            width: 1.w,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextField(
                      controller: password,
                      decoration: InputDecoration(
                        label: Text(
                          "Password",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Color.fromARGB(255, 126, 125, 125)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 66, 66, 66),
                            width: 1.w,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: Color.fromRGBO(20, 146, 230, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    ElevatedButton(
                      onPressed: () {
                        signin();
                        print("successfull");
                      },
                      child: Center(
                        child: Text(
                          "Sign In",
                          style:TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary:const  Color.fromARGB(255, 74, 170, 249),
                        minimumSize: Size(double.infinity, 39.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset('assests/Vector.png'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary:const  Color.fromRGBO(63, 81, 181, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            minimumSize: Size(130.w, 40.h),
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset('assests/Google.png'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Google",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(255, 255, 255, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            minimumSize: Size(130.w, 40.h),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Center(
                        child: Row(
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "SignUP",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    ));
  }

  Future<dynamic> signin() async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: emailController.text.trim(), password: password.text.trim());
      print(userCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  // sendotp() async {
    
  //   String id = "";
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //       phoneNumber: '+917095524856',
  //       verificationCompleted: (PhoneAuthCredential credential) {},
  //       verificationFailed: (FirebaseAuthException e) {
  //         print(e.toString());
  //       },
  //       codeSent: (String verificationId, int? resendToken) {
  //         id = verificationId;
  //         print("gotitman");
  //         print(id);
  //       },
  //       codeAutoRetrievalTimeout: (String verificationId) {});
  // }
}
