import 'package:flutter/material.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class education_page extends StatefulWidget {
  const education_page({Key? key}) : super(key: key);

  @override
  State<education_page> createState() => _education_pageState();
}

class _education_pageState extends State<education_page> {
  TextEditingController coursecontroller = TextEditingController(
    text: Global.course,
  );
  TextEditingController schoolcontroller = TextEditingController(
    text: Global.school,
  );
  TextEditingController perchanatgecontroller = TextEditingController(
    text: Global.perchanatge,
  );
  TextEditingController passingyearcontroller = TextEditingController(
    text: Global.passingyear,
  );

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              height: h * 0.2,
              width: w * 1,
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  backButton(context),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    "EDUCATION",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: h * 0.75,
                width: w * 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Form(
                  key: formkey,
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "Course / Degree",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 16,
                            right: 16,
                          ),
                          child: TextFormField(
                            cursorColor: Colors.deepPurple,
                            controller: coursecontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.course = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Course / Degree...";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.deepPurple,
                              )),
                              labelText: "Course / Degree",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "School / College / Institutes",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 16,
                            right: 16,
                          ),
                          child: TextFormField(
                            cursorColor: Colors.deepPurple,
                            controller: schoolcontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.school = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your School / Institutes...";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                ),
                              ),
                              labelText: "School / Institutes",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "CGPA / GRADE",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 16,
                            right: 16,
                          ),
                          child: TextFormField(
                            cursorColor: Colors.deepPurple,
                            controller: perchanatgecontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.perchanatge = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Percentage...";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                ),
                              ),
                              labelText: "Percentage",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "Year Of Pass",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 16,
                            right: 16,
                          ),
                          child: TextFormField(
                            cursorColor: Colors.deepPurple,
                            controller: passingyearcontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.passingyear = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Passing Year...";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.deepPurple,
                              )),
                              labelText: "Year",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.deepPurple),
                              ),
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  setState(() {
                                    formkey.currentState!.save();
                                  });
                                  ScaffoldMessenger.of(context)
                                    ..removeCurrentSnackBar()
                                    ..showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            "Thank You For Information !!"),
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: Colors.green,
                                      ),
                                    );
                                  Navigator.pop(context);
                                } else {
                                  ScaffoldMessenger.of(context)
                                    ..removeCurrentSnackBar()
                                    ..showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            " Please Enter Your Details.."),
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                }
                              },
                              child: const Text("Save",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.deepPurple),
                              ),
                              onPressed: () {
                                setState(() {
                                  formkey.currentState!.reset();
                                  Global.course = Global.school = Global
                                      .perchanatge = Global.passingyear = null;
                                  coursecontroller.clear();
                                  schoolcontroller.clear();
                                  perchanatgecontroller.clear();
                                  passingyearcontroller.clear();
                                });
                              },
                              child: const Text("RESET",
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
