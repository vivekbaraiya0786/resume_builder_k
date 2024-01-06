import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/back_buuton.dart';
import '../../utils/routes.dart';

class profile_page extends StatefulWidget {
  const profile_page({Key? key}) : super(key: key);

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  Color deepurple = Colors.deepPurple;
  Color Textdeepurple = Colors.deepPurple.shade800;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SafeArea(
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          backButton(context),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 130,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, viewcv);
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  CupertinoIcons.eye_fill,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "View CV",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                        height: h * 0.9,
                        width: w * 1,
                        color: Colors.grey.shade200,
                      )
                    ],
                  ),
                  Positioned(
                    top: 70,
                    left: 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: routeList
                            .map(
                              (e) => InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(e['page']);
                                },
                                child: Container(
                                  height: h * 0.14,
                                  width: h * 0.14,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(3, 3),
                                        blurRadius: 3,
                                      ),
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(-3, -3),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(e['icon'], height: 60),
                                      Text(
                                        e['route'],
                                        style: TextStyle(
                                          color: deepurple,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                  Positioned(
                    top: 200,
                    left: 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: routeList2
                            .map(
                              (e) => InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(e['page']);
                                },
                                child: Container(
                                  height: h * 0.14,
                                  width: h * 0.14,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(3, 3),
                                        blurRadius: 3,
                                      ),
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(-3, -3),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(e['icon'], height: 60),
                                      Text(
                                        e['route'],
                                        style: TextStyle(
                                          color: deepurple,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                  Positioned(
                    top: 330,
                    left: 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: routeList3
                            .map(
                              (e) => InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(e['page']);
                                },
                                child: Container(
                                  height: h * 0.14,
                                  width: h * 0.14,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(3, 3),
                                        blurRadius: 3,
                                      ),
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(-3, -3),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(e['icon'], height: 60),
                                      Text(
                                        e['route'],
                                        style: TextStyle(
                                          color: deepurple,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                  Positioned(
                    top: 460,
                    left: 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: routeList4
                            .map(
                              (e) => InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(e['page']);
                                },
                                child: Container(
                                  height: h * 0.14,
                                  width: h * 0.14,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(3, 3),
                                        blurRadius: 3,
                                      ),
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(-3, -3),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(e['icon'], height: 60),
                                      Text(
                                        e['route'],
                                        style: TextStyle(
                                          color: deepurple,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                  Positioned(
                    top: 590,
                    left: 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: routeList5
                            .map(
                              (e) => InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(e['page']);
                                },
                                child: Container(
                                  height: h * 0.14,
                                  width: h * 0.14,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(3, 3),
                                        blurRadius: 3,
                                      ),
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(-3, -3),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(e['icon'], height: 60),
                                      Text(
                                        e['route'],
                                        style: TextStyle(
                                          color: deepurple,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                  Positioned(
                    top: 720,
                    left: 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: routeList6
                            .map(
                              (e) => InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(e['page']);
                                },
                                child: Container(
                                  height: h * 0.14,
                                  width: h * 0.14,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(3, 3),
                                        blurRadius: 3,
                                      ),
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(-3, -3),
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(e['icon'], height: 60),
                                      Text(
                                        e['route'],
                                        style: TextStyle(
                                          color: deepurple,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }
}
