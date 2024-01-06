import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart ' as cv;
import 'package:printing/printing.dart';

import '../../modals/global.dart';
import '../../utils/back_buuton.dart';

class viewcv_page extends StatefulWidget {
  const viewcv_page({Key? key}) : super(key: key);

  @override
  State<viewcv_page> createState() => _viewcv_pageState();
}

class _viewcv_pageState extends State<viewcv_page> {
  Future<void> genratePDF1() async {
    cv.Document pdf = cv.Document();

    var bgimage1 = await networkImage(
        "https://img.freepik.com/free-vector/cerulean-blue-curve-frame-template_53876-99029.jpg?w=740&t=st=1679223174~exp=1679223774~hmac=c4934f864101c1cc9b814fbb63a9088d06366e1dfec8ec72dfc4fdff81e6a61d");

    pdf.addPage(
      cv.Page(
        pageFormat: PdfPageFormat.a4,
        // pageTheme: cv.PageTheme(
        //   buildBackground: (cv.Context context) => cv.FullPage(
        //     ignoreMargins: true,
        //     child: cv.Container(
        //       height: double.infinity,
        //       width: double.infinity,
        //       decoration: cv.BoxDecoration(
        //         image: cv.DecorationImage(
        //           image: bgimage1,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        build: (cv.Context context) => cv.Column(
          children: [
            cv.Row(
              children: [
                (Global.image != null)
                    ? cv.Container(
                        height: 70,
                        width: 80,
                        decoration: cv.BoxDecoration(
                            color: PdfColors.grey,
                            borderRadius: cv.BorderRadius.circular(5),
                            image: cv.DecorationImage(
                              image: cv.MemoryImage(
                                  Global.image!.readAsBytesSync()),
                            )))
                    : cv.Container(
                        height: 80,
                        width: 80,
                        decoration: const cv.BoxDecoration(
                          color: PdfColors.grey,
                        )),
                cv.Column(
                    mainAxisAlignment: cv.MainAxisAlignment.start,
                    crossAxisAlignment: cv.CrossAxisAlignment.start,
                    children: [
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                        ),
                        child: cv.Container(
                          child: Global.name != null
                              ? cv.Text(
                                  "${Global.name}",
                                  style: cv.TextStyle(
                                    fontWeight: cv.FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                        ),
                        child: cv.Container(
                          child: Global.address != null
                              ? cv.Text(
                                  "${Global.address}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.SizedBox(
                        height: 30,
                      ),
                    ]),
                cv.SizedBox(
                  width: 120,
                ),
                cv.Column(
                    // mainAxisAlignment: cv.MainAxisAlignment.end,
                    crossAxisAlignment: cv.CrossAxisAlignment.end,
                    children: [
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                        ),
                        child: cv.Container(
                          child: Global.email != null
                              ? cv.Text(
                                  "${Global.email}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.contact != null
                              ? cv.Text(
                                  "${Global.contact}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.bithdate != null
                              ? cv.Text(
                                  "${Global.bithdate}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.namefull != null
                              ? cv.Text(
                                  "${Global.namefull}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Row(children: [
                        cv.Padding(
                          padding: const cv.EdgeInsets.only(
                            left: 10,
                            top: 3,
                          ),
                          child: cv.Text(
                            "In",
                            style: cv.TextStyle(
                                fontWeight: cv.FontWeight.bold, fontSize: 10),
                          ),
                        ),
                        cv.Padding(
                          padding: const cv.EdgeInsets.only(
                            left: 10,
                            top: 3,
                          ),
                          child: cv.Container(
                            child: Global.namefull != null
                                ? cv.Text(
                                    "${Global.namefull}",
                                    style: const cv.TextStyle(
                                      fontSize: 10,
                                    ),
                                  )
                                : cv.Container(),
                          ),
                        ),
                      ])
                    ])
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "O",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "bjective",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 30,
                ),
                cv.Column(
                    crossAxisAlignment: cv.CrossAxisAlignment.start,
                    children: [
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.careerobject != null
                              ? cv.Text(
                                  "${Global.careerobject}",
                                  style: cv.TextStyle(
                                    fontSize: 10,
                                    fontWeight: cv.FontWeight.bold,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.currentdesignation != null
                              ? cv.Text(
                                  "${Global.currentdesignation}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                    ])
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "E",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "xperience",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 20,
                ),
                cv.Column(
                    crossAxisAlignment: cv.CrossAxisAlignment.start,
                    children: [
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.companyname != null
                              ? cv.Text(
                                  "${Global.companyname}",
                                  style: cv.TextStyle(
                                    fontSize: 12,
                                    fontWeight: cv.FontWeight.bold,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.jobtitle != null
                              ? cv.Text(
                                  "${Global.jobtitle}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.roles != null
                              ? cv.Text(
                                  "${Global.roles}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                    ]),
                cv.SizedBox(
                  width: 150,
                ),
                cv.Padding(
                  padding: const cv.EdgeInsets.only(
                    left: 10,
                    top: 3,
                  ),
                  child: cv.Container(
                    child: Global.dateofjoined != null
                        ? cv.Text(
                            "${Global.dateofjoined}  -",
                            style: const cv.TextStyle(
                              fontSize: 10,
                              color: PdfColors.red,
                            ),
                          )
                        : cv.Container(),
                  ),
                ),
                cv.Padding(
                  padding: const cv.EdgeInsets.only(
                    left: 10,
                    top: 3,
                  ),
                  child: cv.Container(
                    child: Global.dateofend != null
                        ? cv.Text(
                            "${Global.dateofend}",
                            style: const cv.TextStyle(
                              fontSize: 10,
                              color: PdfColors.red,
                            ),
                          )
                        : cv.Container(),
                  ),
                ),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "E",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "ducation",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 25,
                ),
                cv.Column(
                    crossAxisAlignment: cv.CrossAxisAlignment.start,
                    mainAxisSize: cv.MainAxisSize.min,
                    children: [
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.course != null
                              ? cv.Text(
                                  "${Global.course}",
                                  style: cv.TextStyle(
                                    fontSize: 12,
                                    fontWeight: cv.FontWeight.bold,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.school != null
                              ? cv.Text(
                                  "${Global.school}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.perchanatge != null
                              ? cv.Text(
                                  "${Global.perchanatge}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                    ]),
                cv.SizedBox(
                  width: 220,
                ),
                cv.Padding(
                  padding: const cv.EdgeInsets.only(
                    left: 10,
                    top: 3,
                  ),
                  child: cv.Container(
                    child: Global.passingyear != null
                        ? cv.Text(
                            "${Global.passingyear} ",
                            style: const cv.TextStyle(
                              fontSize: 10,
                              color: PdfColors.red,
                            ),
                          )
                        : cv.Container(),
                  ),
                ),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "S",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "kills",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 45,
                ),
                ...Global.technicalSkills
                    .map(
                      (e) => cv.Row(
                        children: [
                          cv.SizedBox(
                            width: 10,
                          ),
                          cv.Container(
                            height: 5,
                            width: 5,
                            decoration: const cv.BoxDecoration(
                              shape: cv.BoxShape.circle,
                              color: PdfColors.blue800,
                            ),
                          ),
                          cv.Padding(
                            padding: const cv.EdgeInsets.only(
                              left: 10,
                            ),
                            child: cv.Text("${e}"),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "P",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "rojects",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 30,
                ),
                cv.Column(
                    crossAxisAlignment: cv.CrossAxisAlignment.start,
                    mainAxisSize: cv.MainAxisSize.min,
                    children: [
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.projecttitle != null
                              ? cv.Text(
                                  "${Global.projecttitle}",
                                  style: cv.TextStyle(
                                    fontSize: 10,
                                    fontWeight: cv.FontWeight.bold,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.projectdetails != null
                              ? cv.Text(
                                  "${Global.projectdetails}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                    ]),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "R",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "eference",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 20,
                ),
                cv.Column(
                    crossAxisAlignment: cv.CrossAxisAlignment.start,
                    mainAxisSize: cv.MainAxisSize.min,
                    children: [
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.referencename != null
                              ? cv.Text(
                                  "${Global.referencename}",
                                  style: cv.TextStyle(
                                    fontSize: 10,
                                    fontWeight: cv.FontWeight.bold,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.designation != null
                              ? cv.Text(
                                  "${Global.designation}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.organization != null
                              ? cv.Text(
                                  "${Global.organization}",
                                  style: const cv.TextStyle(
                                    fontSize: 10,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                    ]),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "A",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "dditional\ninformation",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 20,
                ),
                cv.Column(
                    crossAxisAlignment: cv.CrossAxisAlignment.start,
                    mainAxisSize: cv.MainAxisSize.min,
                    children: [
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.details != null
                              ? cv.Text(
                                  "${Global.details}",
                                  style: cv.TextStyle(
                                    fontSize: 10,
                                    fontWeight: cv.FontWeight.bold,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                    ]),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "I",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "nterests",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 30,
                ),
                ...Global.interesthobbiess
                    .map(
                      (e) => cv.Row(
                        children: [
                          cv.SizedBox(
                            width: 10,
                          ),
                          cv.Container(
                            height: 5,
                            width: 5,
                            decoration: const cv.BoxDecoration(
                              shape: cv.BoxShape.circle,
                              color: PdfColors.blue800,
                            ),
                          ),
                          cv.Padding(
                            padding: const cv.EdgeInsets.only(
                              left: 10,
                            ),
                            child: cv.Text("${e}"),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "L",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "anguage",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 20,
                ),
                // (Global.gujarati == true)
                //     ? (cv.Text("Gujarati"))
                //     : cv.Container(),
                // (Global.english == true)
                //     ? (cv.Text("English"))
                //     : cv.Container(),
                // (Global.hindi == true)
                //     ? (cv.Text("Hindi"))
                //     : cv.Container(),
                ...Global.language
                    .map(
                      (e) => cv.Row(
                        children: [
                          cv.SizedBox(
                            width: 10,
                          ),
                          cv.Container(
                            height: 5,
                            width: 5,
                            decoration: const cv.BoxDecoration(
                              shape: cv.BoxShape.circle,
                              color: PdfColors.blue800,
                            ),
                          ),
                          cv.Padding(
                            padding: const cv.EdgeInsets.only(
                              left: 10,
                            ),
                            child: cv.Text("${e}"),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "A",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "chievemts",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 15,
                ),
                ...Global.achievements
                    .map(
                      (e) => cv.Row(
                        children: [
                          cv.SizedBox(
                            width: 10,
                          ),
                          cv.Container(
                            height: 5,
                            width: 5,
                            decoration: const cv.BoxDecoration(
                              shape: cv.BoxShape.circle,
                              color: PdfColors.blue800,
                            ),
                          ),
                          cv.Padding(
                            padding: const cv.EdgeInsets.only(
                              left: 10,
                            ),
                            child: cv.Text("${e}"),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "A",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "ctivies",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 30,
                ),
                ...Global.avtivity
                    .map(
                      (e) => cv.Row(
                        children: [
                          cv.SizedBox(
                            width: 10,
                          ),
                          cv.Container(
                            height: 5,
                            width: 5,
                            decoration: const cv.BoxDecoration(
                              shape: cv.BoxShape.circle,
                              color: PdfColors.blue800,
                            ),
                          ),
                          cv.Padding(
                            padding: const cv.EdgeInsets.only(
                              left: 10,
                            ),
                            child: cv.Text("${e}"),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "P",
                          style: cv.TextStyle(
                            fontSize: 14,
                            color: PdfColors.red,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "ublication",
                          style: cv.TextStyle(
                            fontSize: 10,
                            color: PdfColors.red,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 15,
                ),
                cv.Column(
                    // crossAxisAlignment: cv.CrossAxisAlignment.start,
                    // mainAxisSize: cv.MainAxisSize.min,
                    children: [
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.titlepublication != null
                              ? cv.Text(
                                  "${Global.titlepublication}",
                                  style: cv.TextStyle(
                                    fontSize: 10,
                                    fontWeight: cv.FontWeight.bold,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                      cv.Padding(
                        padding: const cv.EdgeInsets.only(
                          left: 10,
                          top: 3,
                        ),
                        child: cv.Container(
                          child: Global.decscription != null
                              ? cv.Text(
                                  "${Global.decscription}",
                                  style: cv.TextStyle(
                                    fontSize: 10,
                                    fontWeight: cv.FontWeight.bold,
                                  ),
                                )
                              : cv.Container(),
                        ),
                      ),
                    ]),
              ],
            ),
            cv.Divider(),
            cv.SizedBox(
              height: 5,
            ),
            cv.Row(
              mainAxisAlignment: cv.MainAxisAlignment.end,
              children: [
                cv.RichText(
                  text: cv.TextSpan(
                    children: [
                      cv.TextSpan(
                          text: "S",
                          style: cv.TextStyle(
                            fontSize: 14,
                            fontWeight: cv.FontWeight.bold,
                          )),
                      const cv.TextSpan(
                          text: "ignature :",
                          style: cv.TextStyle(
                            fontSize: 10,
                          )),
                    ],
                  ),
                ),
                cv.SizedBox(
                  width: 15,
                ),
                cv.Column(
                    // crossAxisAlignment: cv.CrossAxisAlignment.start,
                    mainAxisSize: cv.MainAxisSize.min,
                    children: [
                      (Global.image1 != null)
                          ? cv.Container(
                              height: 40,
                              width: 80,
                              decoration: cv.BoxDecoration(
                                  color: PdfColors.grey,
                                  borderRadius: cv.BorderRadius.circular(5),
                                  image: cv.DecorationImage(
                                    image: cv.MemoryImage(
                                        Global.image1!.readAsBytesSync()),
                                  )))
                          : cv.Container(
                              height: 80,
                              width: 80,
                              decoration: const cv.BoxDecoration(
                                color: PdfColors.grey,
                              )),
                      cv.SizedBox(
                        height: 20,
                      ),
                      cv.Container(
                        height: 1,
                        width: 80,
                        color: PdfColors.black,
                      ),
                      cv.SizedBox(
                        height: 40,
                      ),
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
    Uint8List data = await pdf.save();
    await Printing.layoutPdf(
      onLayout: (format) => data,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: h * 0.15,
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
                      "CV PAGE",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: h * 1,
                        width: w * 1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      genratePDF1();
                                    },
                                    child: Container(
                                      width: w * 0.34,
                                      height: h * 0.3,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/1.jpg"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade200,
      ),
    );
  }
}
