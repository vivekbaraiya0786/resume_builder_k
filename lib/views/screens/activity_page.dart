import 'package:flutter/material.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class activity_page extends StatefulWidget {
  const activity_page({Key? key}) : super(key: key);

  @override
  State<activity_page> createState() => _activity_pageState();
}

class _activity_pageState extends State<activity_page> {
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
                  "ACTIVITIES",
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
                        "Enter Your Activities",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ...List.generate(
                        Global.avtivity.length,
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
                            Global.avtivity.add("");
                            Global.avtivitycontrollers
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
            controller: Global.avtivitycontrollers[index],
            onChanged: (value) {
              Global.avtivity[index] = value;
            },
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Global.avtivity.removeAt(index);
              Global.avtivitycontrollers.removeAt(index);
            });
          },
          child: const Icon(Icons.delete),
        ),
      ],
    );
  }
}
