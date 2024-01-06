import 'package:flutter/material.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class objectives_page extends StatefulWidget {
  const objectives_page({Key? key}) : super(key: key);

  @override
  State<objectives_page> createState() => _objectives_pageState();
}

class _objectives_pageState extends State<objectives_page> {
  TextEditingController careerobjectcontroller =
      TextEditingController(text: Global.careerobject);
  TextEditingController currentdesignationcontroller =
      TextEditingController(text: Global.currentdesignation);

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
                    "OBJECTIVES",
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
                            "Career Objectives",
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
                            maxLines: 8,
                            cursorColor: Colors.deepPurple,
                            controller: careerobjectcontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.careerobject = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Career Object";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                ),
                              ),
                              labelText: "Career Objectives",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "Current Designation",
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
                            controller: currentdesignationcontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.currentdesignation = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Designation";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                ),
                              ),
                              labelText: "Designation",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 180,
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
                                  Global.careerobject =
                                      Global.currentdesignation = null;
                                  careerobjectcontroller.clear();
                                  currentdesignationcontroller.clear();
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
