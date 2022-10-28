import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern1/screens/Home.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                width: double.infinity,
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.off(() => Home());
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                              ),
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.waving_hand_sharp,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              "Hello, Joe",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: Text(
                        "Credits : 50",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Passbook",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See all (9)",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
              List(),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class List extends StatelessWidget {
  const List({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        // color: Colors.blue,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
      ),
      title: Text(
        "Order ID PiX2871",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Text(
        "50 Credits",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
