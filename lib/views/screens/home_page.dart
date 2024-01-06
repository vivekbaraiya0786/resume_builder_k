import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  String? popupMenuVal = "SWF";

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    void _showBackDialog() {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text(
              'Are you sure you want to leave this page?',
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Nevermind'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Leave'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        _showBackDialog();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Resume Builder",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            backgroundColor: Colors.deepPurple,
            onPressed: () async {
              await Navigator.of(context).pushNamed(profilePage);
              setState(() {});
            },
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.deepPurple,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: PopupMenuButton(
                    iconColor: Colors.white,
                    initialValue: "SWF",
                    color: Colors.white,
                    iconSize: 27,
                    offset: const Offset(0, -5),
                    onSelected: (value) {
                      setState(() {
                        popupMenuVal = value;
                      });
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: "",
                        child: Text(
                          "Share With Friends",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: "RTA",
                        child: Text(
                          "Rate the app",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: "PP",
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: "TOS",
                        child: Text(
                          "Terms of Service",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.download,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
