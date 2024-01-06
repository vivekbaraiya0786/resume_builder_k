import 'package:flutter/material.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';
import '../../utils/path.dart';

class declaration_page extends StatefulWidget {
  const declaration_page({Key? key}) : super(key: key);

  @override
  State<declaration_page> createState() => _declaration_pageState();
}

class _declaration_pageState extends State<declaration_page> {
  bool switchVal = false;

  TextEditingController decscriptionController =
      TextEditingController(text: Global.decscription);

  TextEditingController declarationDateController =
      TextEditingController(text: Global.declarationDate);
  TextEditingController placeController =
      TextEditingController(text: Global.place);

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
                    "DECLARATION",
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
                child: Column(
                  children: [
                    Form(
                      key: formkey,
                      child: SingleChildScrollView(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    left: 20,
                                  ),
                                  child: Text(
                                    "Declaration",
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    right: 20,
                                  ),
                                  child: Switch(
                                    activeColor: Colors.deepPurple,
                                    value: switchVal,
                                    onChanged: (val) {
                                      setState(() {
                                        switchVal = val;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            (switchVal == true)
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                          left: 20,
                                        ),
                                        child: Image.asset(
                                          DeclartionPageImage,
                                          height: h * 0.1,
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
                                          "Description",
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
                                          controller: decscriptionController,
                                          textInputAction: TextInputAction.next,
                                          onSaved: (newValue) {
                                            Global.decscription = newValue;
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Please Enter Your Description";
                                            }
                                            return null;
                                          },
                                          decoration: const InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.deepPurple,
                                              ),
                                            ),
                                            labelText: "Description",
                                            labelStyle: TextStyle(
                                              color: Colors.deepPurple,
                                            ),
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
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
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 20,
                                                    left: 20,
                                                  ),
                                                  child: Text(
                                                    "Date",
                                                    style: TextStyle(
                                                      color: Colors.deepPurple,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 15,
                                                    right: 20,
                                                  ),
                                                  child: TextFormField(
                                                    cursorColor:
                                                        Colors.deepPurple,
                                                    controller:
                                                        declarationDateController,
                                                    textInputAction:
                                                        TextInputAction.next,
                                                    onSaved: (newValue) {
                                                      Global.declarationDate =
                                                          newValue;
                                                    },
                                                    validator: (value) {
                                                      if (value!.isEmpty) {
                                                        return "Please Enter Date";
                                                      }
                                                      return null;
                                                    },
                                                    decoration:
                                                        const InputDecoration(
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .deepPurple,
                                                            width: 2),
                                                      ),
                                                      hintText: "DD/MM/YYYY",
                                                      hintStyle: TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                      labelStyle: TextStyle(
                                                        color:
                                                            Colors.deepPurple,
                                                      ),
                                                      border:
                                                          OutlineInputBorder(),
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
                                                    top: 25,
                                                    left: 20,
                                                  ),
                                                  child: Text(
                                                    "Place/Interview\nVenue/city",
                                                    style: TextStyle(
                                                      color: Colors.deepPurple,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 25,
                                                    right: 15,
                                                  ),
                                                  child: TextFormField(
                                                    cursorColor:
                                                        Colors.deepPurple,
                                                    controller: placeController,
                                                    textInputAction:
                                                        TextInputAction.next,
                                                    onSaved: (newValue) {
                                                      Global.place = newValue;
                                                    },
                                                    validator: (value) {
                                                      if (value!.isEmpty) {
                                                        return "Please Enter Place";
                                                      }
                                                      return null;
                                                    },
                                                    decoration:
                                                        const InputDecoration(
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .deepPurple,
                                                            width: 2),
                                                      ),
                                                      hintText: "DD/MM/YYYY",
                                                      hintStyle: TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                      labelStyle: TextStyle(
                                                        color:
                                                            Colors.deepPurple,
                                                      ),
                                                      border:
                                                          OutlineInputBorder(),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 80,
                                      ),
                                    ],
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                    //Save And Clear Button
                    (switchVal == true)
                        ? SizedBox(
                            height: 50,
                            child: Row(
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
                                      Global.decscription =
                                          Global.declarationDate =
                                              Global.place = null;

                                      decscriptionController.clear();
                                      declarationDateController.clear();
                                      placeController.clear();
                                    });
                                  },
                                  child: const Text("RESET",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ],
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
