import 'package:flutter/material.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class personal_details extends StatefulWidget {
  const personal_details({Key? key}) : super(key: key);

  @override
  State<personal_details> createState() => _personal_detailsState();
}

class _personal_detailsState extends State<personal_details> {
  TextEditingController namedatecontroller =
      TextEditingController(text: Global.name);
  TextEditingController birthdatecontroller =
      TextEditingController(text: Global.bithdate);
  TextEditingController nationalitycontroller =
      TextEditingController(text: Global.nationality);

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
                    "PERSONAL DETAILS",
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
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 20,
                          ),
                          child: Text(
                            "Name",
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
                            controller: namedatecontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.name = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Name";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              // enabledBorder: OutlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: Colors.deepPurple
                              //   )
                              // ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.deepPurple,
                                ),
                              ),
                              // hintText: "DATE OF BIRTH",
                              labelText: "Name",
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
                            "DOB",
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
                            controller: birthdatecontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.bithdate = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Nation";
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
                              labelText: "BIRTH DATE",
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
                            "NATIONALITY",
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
                            controller: nationalitycontroller,
                            textInputAction: TextInputAction.next,
                            onSaved: (newValue) {
                              Global.nationality = newValue;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Nation";
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
                              labelText: "NATIONALITY",
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 16,
                            top: 16,
                          ),
                          child: Text(
                            "Maretial Status",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        RadioListTile(
                          activeColor: Colors.deepPurple,
                          title: Text(
                            "Singal",
                            style: TextStyle(
                              color: radio1,
                            ),
                          ),
                          value: "Singal",
                          groupValue: Global.maretialStatus,
                          onChanged: (value) {
                            setState(() {
                              Global.maretialStatus = value.toString();
                              radio1 = Colors.deepPurple;
                              radio2 = Colors.black;
                            });
                          },
                        ),
                        RadioListTile(
                          activeColor: Colors.deepPurple,
                          title: Text(
                            "Married",
                            style: TextStyle(
                              color: radio2,
                            ),
                          ),
                          value: "Married",
                          groupValue: Global.maretialStatus,
                          onChanged: (value) {
                            setState(() {
                              Global.maretialStatus = value.toString();
                              radio1 = Colors.black;
                              radio2 = Colors.deepPurple;
                            });
                          },
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Languages Known",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        CheckboxListTile(
                          title: const Text("English"),
                          activeColor: Colors.deepPurple,
                          checkColor: Colors.white,
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          value: Global.english,
                          onChanged: (value) {
                            setState(() {
                              Global.english = value!;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text("Hindi"),
                          activeColor: Colors.deepPurple,
                          checkColor: Colors.white,
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          value: Global.hindi,
                          onChanged: (value) {
                            setState(() {
                              Global.hindi = value!;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text("Gujarati"),
                          activeColor: Colors.deepPurple,
                          checkColor: Colors.white,
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          value: Global.gujarati,
                          onChanged: (value) {
                            setState(() {
                              Global.gujarati = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 20,
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
                                  print(Global.maretialStatus);
                                  print(Global.english);
                                  print(Global.hindi);
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
                              child: const Text(
                                "Save",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.deepPurple),
                              ),
                              onPressed: () {
                                setState(() {
                                  formkey.currentState!.reset();
                                  Global.name = Global.bithdate =
                                      Global.nationality = null;
                                  namedatecontroller.clear();
                                  birthdatecontroller.clear();
                                  nationalitycontroller.clear();
                                });
                              },
                              child: const Text(
                                "RESET",
                                style: TextStyle(color: Colors.white),
                              ),
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
