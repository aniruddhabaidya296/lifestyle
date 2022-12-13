import 'dart:ui';

import 'package:lifestyle/data/latest_workout.dart';
import 'package:lifestyle/pages/today_target_detail_page.dart';
import 'package:lifestyle/theme/colors.dart';
import 'package:lifestyle/widget/chart_activity_status.dart';
import 'package:lifestyle/widget/chart_sleep.dart';
import 'package:lifestyle/widget/chart_workout_progress.dart';
import 'package:lifestyle/widget/water_intake_progressbar.dart';
import 'package:lifestyle/widget/water_intake_timeline.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(fontSize: 14, color: black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Aniruddha",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: black),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.03),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Icon(LineIcons.bell),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [secondary, primary]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: (size.width),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Week 1-2",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [fourthColor, thirdColor]),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "View Full Week Plan",
                                    style:
                                        TextStyle(fontSize: 13, color: white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient:
                              LinearGradient(colors: [fourthColor, thirdColor]),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: CircularProgressIndicator(
                                backgroundColor: primary,
                                strokeWidth: 10,
                                value: 0.25,
                                color: googleColor,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "25%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: secondary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today Workout",
                        style: TextStyle(
                            fontSize: 17,
                            color: black,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (c) => TodayTargetDetailPage()));
                        },
                        child: Container(
                          width: 70,
                          height: 35,
                          decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(colors: [secondary, primary]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              "Check",
                              style: TextStyle(fontSize: 13, color: white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Weight Progress",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                  Container(
                    width: 95,
                    height: 35,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [secondary, primary]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weekly",
                          style: TextStyle(fontSize: 13, color: white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: white,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: black.withOpacity(0.01),
                          spreadRadius: 20,
                          blurRadius: 10,
                          offset: Offset(0, 10))
                    ],
                    borderRadius: BorderRadius.circular(30)),
                child: LineChart(
                  workoutProgressData(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Other Details",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                  // Text(
                  //   "See more",
                  //   style:
                  //       TextStyle(fontSize: 15, color: black.withOpacity(0.5)),
                  // ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(latestWorkoutJson.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: white,
                          boxShadow: [
                            BoxShadow(
                                color: black.withOpacity(0.01),
                                spreadRadius: 20,
                                blurRadius: 10,
                                offset: Offset(0, 10))
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          latestWorkoutJson[index]['img']))),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Container(                                
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      latestWorkoutJson[index]['title'],
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: primary)),
                              child: Center(
                                child: Icon(Icons.arrow_forward_ios,
                                    size: 11, color: primary),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
