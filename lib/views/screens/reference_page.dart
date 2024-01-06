import 'package:flutter/material.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class reference_page extends StatefulWidget {
  const reference_page({Key? key}) : super(key: key);

  @override
  State<reference_page> createState() => _reference_pageState();
}

class _reference_pageState extends State<reference_page> {
  TextEditingController referencenamecontroller =
      TextEditingController(text: Global.referencename);
  TextEditingController designationcontroller =
      TextEditingController(text: Global.designation);
  TextEditingController organizationcontroller =
      TextEditingController(text: Global.organization);

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
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
                  "REFERENCE",
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
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 20,
                        ),
                        child: Text(
                          "Reference Name",
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
                          controller: referencenamecontroller,
                          textInputAction: TextInputAction.next,
                          onSaved: (newValue) {
                            Global.referencename = newValue;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Your Reference...";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.deepPurple,
                            )),
                            labelText: "Reference Name",
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
                          "Designation",
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
                          controller: designationcontroller,
                          textInputAction: TextInputAction.next,
                          onSaved: (newValue) {
                            Global.designation = newValue;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Your designation...";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.deepPurple,
                            )),
                            labelText: "designation",
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
                          "Organization",
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
                          controller: organizationcontroller,
                          textInputAction: TextInputAction.next,
                          onSaved: (newValue) {
                            Global.organization = newValue;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Your Organization...";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.deepPurple,
                            )),
                            labelText: "Organization",
                            labelStyle: TextStyle(
                              color: Colors.deepPurple,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepPurple),
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
                                      content:
                                          Text("Thank You For Information !!"),
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
                                      content:
                                          Text(" Please Enter Your Details.."),
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
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepPurple),
                            ),
                            onPressed: () {
                              setState(() {
                                formkey.currentState!.reset();

                                Global.referencename =
                                    Global.designation = null;

                                referencenamecontroller.clear();
                                designationcontroller.clear();
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
    );
  }
}
