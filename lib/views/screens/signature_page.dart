import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class signature_page extends StatefulWidget {
  const signature_page({Key? key}) : super(key: key);

  @override
  State<signature_page> createState() => _signature_pageState();
}

class _signature_pageState extends State<signature_page> {
  Future<void> getImageFromCamera() async {
    ImagePicker picker = ImagePicker();

    XFile? img = await picker.pickImage(source: ImageSource.camera);
    if (img != null) {
      setState(() {
        Global.image1 = File(img.path);
      });
    }
  }

  Future<void> getImageFromGallery() async {
    ImagePicker picker = ImagePicker();

    XFile? img = await picker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      setState(() {
        Global.image1 = File(img.path);
      });
    }
  }

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
                  "SIGNATURE",
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
              height: h * 0.50,
              width: w * 1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
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
                              foregroundImage: Global.image1 != null
                                  ? FileImage(
                                      File(Global.image1!.path),
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
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
