import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class contact_info extends StatefulWidget {
  const contact_info({Key? key}) : super(key: key);

  @override
  State<contact_info> createState() => _contact_infoState();
}

class _contact_infoState extends State<contact_info> {
  Future<void> getImageFromCamera() async {
    ImagePicker picker = ImagePicker();

    XFile? img = await picker.pickImage(source: ImageSource.camera);
    if (img != null) {
      setState(() {
        Global.image = File(img.path);
      });
    }
  }

  Future<void> getImageFromGallery() async {
    ImagePicker picker = ImagePicker();

    XFile? img = await picker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      setState(() {
        Global.image = File(img.path);
      });
    }
  }

  int i = 0;
  bool obscure = false;

  TextEditingController namecontroller =
      TextEditingController(text: Global.namefull);
  TextEditingController emailcontroller =
      TextEditingController(text: Global.email);
  TextEditingController contactcontroller =
      TextEditingController(text: Global.contact);
  TextEditingController addresscontroller =
      TextEditingController(text: Global.address);

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
            Expanded(
              child: Container(
                height: h * 0.2,
                width: w * 1,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 45,
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
                          "Contact Info",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                i = 0;
                              });
                            },
                            child: Container(
                              height: h * 0.07,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                border: Border(
                                  bottom: BorderSide(
                                    width: i == 0 ? 5 : 0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Contact",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                i = 1;
                              });
                            },
                            child: Container(
                              height: h * 0.07,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                border: Border(
                                  bottom: BorderSide(
                                    width: i == 1 ? 5 : 0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Photo",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: IndexedStack(
                index: i,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: Form(
                        key: formkey,
                        child: SingleChildScrollView(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller: namecontroller,
                                      decoration: const InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.deepPurple,
                                          ),
                                        ),
                                        labelText: "Name",
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      onSaved: (newValue) {
                                        Global.namefull = newValue;
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Your Name";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.email,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller: emailcontroller,
                                      decoration: const InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.deepPurple,
                                          ),
                                        ),
                                        labelText: "Email",
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      onSaved: (newValue) {
                                        Global.email = newValue;
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Your Email....";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.phone_android_outlined,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      maxLength: 10,
                                      obscureText: !obscure,
                                      controller: contactcontroller,
                                      decoration: InputDecoration(
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                obscure = !obscure;
                                              });
                                            },
                                            child: Icon(
                                              obscure
                                                  ? Icons
                                                      .visibility_off_outlined
                                                  : Icons.visibility_rounded,
                                              color: Colors.deepPurple,
                                            ),
                                          ),
                                        ),
                                        prefixText: "+91 ",
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.deepPurple,
                                          ),
                                        ),
                                        labelText: "Phone",
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                      textInputAction: TextInputAction.next,
                                      onSaved: (newValue) {
                                        Global.contact = newValue;
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Your Contact";
                                        } else if (value.length < 10) {
                                          return "Enter Longer Number";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      maxLines: 5,
                                      controller: addresscontroller,
                                      decoration: const InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.deepPurple,
                                          )),
                                          labelText: "Address",
                                          labelStyle: TextStyle(
                                            color: Colors.deepPurple,
                                          ),
                                          border: OutlineInputBorder()),
                                      onSaved: (newValue) {
                                        Global.address = newValue;
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Your Address";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
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
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              backgroundColor: Colors.green,
                                            ),
                                          );

                                        // ScaffoldMessenger.of(context).removeCurrentSnackBar();
                                        Navigator.pop(context);
                                      } else {
                                        ScaffoldMessenger.of(context)
                                          ..removeCurrentSnackBar()
                                          ..showSnackBar(const SnackBar(
                                            content: Text(
                                                " Please Enter Your Details.."),
                                            behavior: SnackBarBehavior.floating,
                                            backgroundColor: Colors.red,
                                          ));
                                      }
                                    },
                                    child: const Text("Save",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.deepPurple),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        formkey.currentState!.reset();
                                        Global.namefull = Global.email = Global
                                            .contact = Global.address = null;

                                        namecontroller.clear();
                                        emailcontroller.clear();
                                        contactcontroller.clear();
                                        addresscontroller.clear();
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
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      height: h * 0.40,
                      width: w * 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                              radius: 80,
                              foregroundImage: Global.image != null
                                  ? FileImage(
                                      File(Global.image!.path),
                                    )
                                  : null,
                              child: const Text("ADD IMAGE")),
                          FloatingActionButton.small(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text("ADD IMAGE.."),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        getImageFromCamera();
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/camera.png",
                                              height: 60,
                                              width: 80,
                                            ),
                                            const Text("Camera"),
                                          ],
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        getImageFromGallery();
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/gallery.png",
                                              height: 60,
                                              width: 80,
                                            ),
                                            const Text("Gallery"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
