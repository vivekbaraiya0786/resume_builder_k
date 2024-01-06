import 'package:flutter/material.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class experience_page extends StatefulWidget {
  const experience_page({Key? key}) : super(key: key);

  @override
  State<experience_page> createState() => _experience_pageState();
}

class _experience_pageState extends State<experience_page> {
  TextEditingController compnaynamecontroller =
      TextEditingController(text: Global.companyname);
  TextEditingController jobtitlecontroller =
      TextEditingController(text: Global.jobtitle);
  TextEditingController rolescontroller =
      TextEditingController(text: Global.roles);
  TextEditingController dateofjoinedcontroller =
      TextEditingController(text: Global.dateofjoined);
  TextEditingController dateofendcontroller =
      TextEditingController(text: Global.dateofend);

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Color radio1 = Colors.black;
  Color radio2 = Colors.black;

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
                    "EXPERIENCE",
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
                            "Company Name",
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
                            controller: compnaynamecontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.companyname = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Company Name...";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.deepPurple,
                              )),
                              labelText: "Company Name",
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
                            "Job Title",
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
                            controller: jobtitlecontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.jobtitle = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Job Title...";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                ),
                              ),
                              labelText: "Job Title",
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
                            "Roles (Optional)",
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
                            maxLines: 5,
                            cursorColor: Colors.deepPurple,
                            controller: rolescontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.roles = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Roles...";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.deepPurple,
                              )),
                              labelText: "Roles",
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
                            "Employed Status",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                activeColor: Colors.deepPurple,
                                title: Text(
                                  "Previous Employed",
                                  style: TextStyle(
                                    color: radio1,
                                  ),
                                ),
                                value: "Previous Employed",
                                groupValue: Global.employedStatus,
                                onChanged: (value) {
                                  setState(() {
                                    Global.employedStatus = value;
                                    radio1 = Colors.deepPurple;
                                    radio2 = Colors.black;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                activeColor: Colors.deepPurple,
                                title: Text(
                                  "Currently Employed",
                                  style: TextStyle(
                                    color: radio2,
                                  ),
                                ),
                                value: "Currently Employed",
                                groupValue: Global.employedStatus,
                                onChanged: (value) {
                                  setState(() {
                                    Global.employedStatus = value;
                                    radio1 = Colors.black;
                                    radio2 = Colors.deepPurple;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: Container(
                            height: h * 0.002,
                            width: w * 0.8,
                            alignment: Alignment.center,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      top: 20,
                                      left: 20,
                                    ),
                                    child: Text(
                                      "Date of Joined",
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      left: 15,
                                      right: 20,
                                    ),
                                    child: TextFormField(
                                      cursorColor: Colors.deepPurple,
                                      controller: dateofjoinedcontroller,
                                      textInputAction: TextInputAction.next,
                                      onSaved: (newValue) {
                                        Global.dateofjoined = newValue;
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Your Joining Date";
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurple,
                                              width: 2),
                                        ),
                                        hintText: "DD/MM/YYYY",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurple,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      top: 20,
                                      left: 20,
                                    ),
                                    child: Text(
                                      "Date of End",
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      left: 25,
                                      right: 15,
                                    ),
                                    child: TextFormField(
                                      cursorColor: Colors.deepPurple,
                                      controller: dateofendcontroller,
                                      textInputAction: TextInputAction.next,
                                      onSaved: (newValue) {
                                        Global.dateofend = newValue;
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Your End Date";
                                        }
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurple,
                                              width: 2),
                                        ),
                                        hintText: "DD/MM/YYYY",
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                        ),
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurple,
                                        ),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 70,
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
                                  // ScaffoldMessenger.of(context).removeCurrentSnackBar();
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
                                  Global.companyname = Global.jobtitle =
                                      Global.roles = Global.dateofjoined =
                                          Global.dateofend = null;
                                  compnaynamecontroller.clear();
                                  jobtitlecontroller.clear();
                                  rolescontroller.clear();
                                  dateofjoinedcontroller.clear();
                                  dateofendcontroller.clear();
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
