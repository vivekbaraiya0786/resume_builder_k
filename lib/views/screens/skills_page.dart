import 'package:flutter/material.dart';

import '../../modals/global.dart';

class skills_page extends StatefulWidget {
  const skills_page({Key? key}) : super(key: key);

  @override
  State<skills_page> createState() => _skills_pageState();
}

class _skills_pageState extends State<skills_page> {
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
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 27,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "SKILLS",
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
                        "Enter Your Skills",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ...List.generate(
                        Global.technicalSkills.length,
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
                            Global.technicalSkills.add("");
                            Global.technicalSkillscontrollers
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
            controller: Global.technicalSkillscontrollers[index],
            onChanged: (value) {
              Global.technicalSkills[index] = value;
            },
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Global.technicalSkills.removeAt(index);
              Global.technicalSkillscontrollers.removeAt(index);
            });
          },
          child: Icon(Icons.delete),
        ),
      ],
    );
  }
}
