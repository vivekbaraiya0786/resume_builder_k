import 'package:flutter/material.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class achivements_page extends StatefulWidget {
  const achivements_page({Key? key}) : super(key: key);

  @override
  State<achivements_page> createState() => _achivements_pageState();
}

class _achivements_pageState extends State<achivements_page> {
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
                  "ACHIEVEMENTS",
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Enter Your Achievements",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ...List.generate(
                        Global.achievements.length,
                        (index) => field(index: index),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple),
                        ),
                        onPressed: () {
                          setState(() {
                            Global.achievements.add("");
                            Global.achievementscontrollers
                                .add(TextEditingController());
                          });
                        },
                        child: const Text("Add",
                            style: TextStyle(color: Colors.white)),
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

  Widget field({required int index}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: Colors.deepPurple,
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.deepPurple,
                ),
              ),
            ),
            controller: Global.achievementscontrollers[index],
            onChanged: (value) {
              Global.achievements[index] = value;
            },
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Global.achievements.removeAt(index);
              Global.achievementscontrollers.removeAt(index);
            });
          },
          child: const Icon(Icons.delete),
        ),
      ],
    );
  }
}
