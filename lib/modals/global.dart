import 'dart:io';

import 'package:flutter/cupertino.dart';

class Global {
  //personal details

  static bool gujarati = false;
  static bool english = false;
  static bool hindi = false;

  static String? maretialStatus;

  static String? bithdate;
  static String? nationality;
  static String? name;

  //Education
  static String? course;
  static String? school;
  static String? perchanatge;
  static String? passingyear;

  //Experience

  static String? companyname;
  static String? jobtitle;
  static String? roles;
  static String? dateofjoined;
  static String? dateofend;
  static String? employedStatus;

  //Skills

  static List<String> technicalSkills = [];
  static List<TextEditingController> technicalSkillscontrollers = [];

  //objective

  static String? careerobject;
  static String? currentdesignation;

  //Reference

  static String? referencename;
  static String? designation;
  static String? organization;

  //contact page
  static String? email;
  static String? contact;
  static String? address;
  static File? image;
  static String? namefull;

  //Interest/hobbies

  static List<String> interesthobbiess = [];
  static List<TextEditingController> interesethobbiesscontrollers = [];

  //projects
  static String? projecttitle;
  static String? projectdetails;

  //Achievements

  static List<String> achievements = [];
  static List<TextEditingController> achievementscontrollers = [];

  //declration
  static String? decscription;
  static String? declarationDate;
  static String? place;

  //signature
  static File? image1;

  //Language

  static List<String> language = [];
  static List<TextEditingController> languagecontrollers = [];

  //Additional Information
  static String? details;

  //activity

  static List<String> avtivity = [];
  static List<TextEditingController> avtivitycontrollers = [];

  //Publication
  static String? titledescription;
  static String? titlepublication;

  static String? gender;
  static bool switchVal = false;
  static String? Status;
}
