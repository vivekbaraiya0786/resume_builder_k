import 'package:flutter/material.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class project_page extends StatefulWidget {
  const project_page({Key? key}) : super(key: key);

  @override
  State<project_page> createState() => _project_pageState();
}

class _project_pageState extends State<project_page> {
  TextEditingController projecttitlecontroller =
      TextEditingController(text: Global.projecttitle);
  TextEditingController projectdetailscontroller =
      TextEditingController(text: Global.projectdetails);

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
                    "PROJECT",
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
                height: h * 0.60,
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
                            "Project Title",
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
                            controller: projecttitlecontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.projecttitle = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Project Title";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                ),
                              ),
                              // hintText: "DATE OF BIRTH",
                              labelText: "Project Title",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "Project Details",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 16,
                            right: 16,
                          ),
                          child: TextFormField(
                            cursorColor: Colors.deepPurple,
                            controller: projectdetailscontroller,
                            maxLines: 5,
                            onSaved: (newValue) {
                              Global.projectdetails = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Project Details";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.deepPurple,
                              )),
                              // hintText: "DATE OF BIRTH",
                              labelText: "Details",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
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
                                  Global.projecttitle =
                                      Global.projectdetails = null;
                                  projecttitlecontroller.clear();
                                  projectdetailscontroller.clear();
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
