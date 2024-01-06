import 'package:flutter/material.dart';
import 'package:resume_builder_k/utils/routes.dart';
import 'package:resume_builder_k/views/screens/Education_page.dart';
import 'package:resume_builder_k/views/screens/achievements_page.dart';
import 'package:resume_builder_k/views/screens/activity_page.dart';
import 'package:resume_builder_k/views/screens/additional_page.dart';
import 'package:resume_builder_k/views/screens/contact%20info.dart';
import 'package:resume_builder_k/views/screens/declartion_page.dart';
import 'package:resume_builder_k/views/screens/experience_page.dart';
import 'package:resume_builder_k/views/screens/home_page.dart';
import 'package:resume_builder_k/views/screens/intrest_page.dart';
import 'package:resume_builder_k/views/screens/intro_page.dart';
import 'package:resume_builder_k/views/screens/language_page.dart';
import 'package:resume_builder_k/views/screens/objectives_page.dart';
import 'package:resume_builder_k/views/screens/personal_details.dart';
import 'package:resume_builder_k/views/screens/profile_page.dart';
import 'package:resume_builder_k/views/screens/project_page.dart';
import 'package:resume_builder_k/views/screens/publication_page.dart';
import 'package:resume_builder_k/views/screens/reference_page.dart';
import 'package:resume_builder_k/views/screens/signature_page.dart';
import 'package:resume_builder_k/views/screens/skills_page.dart';
import 'package:resume_builder_k/views/screens/viewcv_page.dart';

void main() {
  runApp(
    const Resumeapp(),
  );
}

class Resumeapp extends StatelessWidget {
  const Resumeapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const intro_page(),
        "home": (context) => const home_page(),
        profilePage: (context) => const profile_page(),
        viewcv: (context) => const viewcv_page(),
        routeList[0]['page']: (context) => const personal_details(),
        routeList[1]['page']: (context) => const education_page(),
        routeList[2]['page']: (context) => const experience_page(),
        routeList2[0]['page']: (context) => const skills_page(),
        routeList2[1]['page']: (context) => const objectives_page(),
        routeList2[2]['page']: (context) => const reference_page(),
        routeList3[0]['page']: (context) => const contact_info(),
        routeList3[1]['page']: (context) => const interest_page(),
        routeList3[2]['page']: (context) => const project_page(),
        routeList4[0]['page']: (context) => const achivements_page(),
        routeList4[1]['page']: (context) => const declaration_page(),
        routeList4[2]['page']: (context) => const signature_page(),
        routeList5[0]['page']: (context) => const language_page(),
        routeList5[1]['page']: (context) => const additional_infromation(),
        routeList5[2]['page']: (context) => const activity_page(),
        routeList6[0]['page']: (context) => const publication_page(),
      },
    );
  }
}
