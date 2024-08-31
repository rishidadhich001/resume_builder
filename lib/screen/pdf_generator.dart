import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder/screen/components/pdftext_box.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';


Future<Uint8List> pdfGenerator() {
  final pdf = pw.Document();
  pdf.addPage(pw.Page(
    margin: pw.EdgeInsets.zero,
    pageFormat: PdfPageFormat.a4,
    build: (context) {
      return pw.Column(children: [
        pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Container(
            child: pw.Container(
              height: 840,
              width: 210,
              decoration: const pw.BoxDecoration(
                color: PdfColors.blue,
              ),
              child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.SizedBox(height: 10),
                    pw.Container(
                        height: 150,
                        width: 150,
                        decoration: pw.BoxDecoration(
                          shape: pw.BoxShape.circle,
                          image: pw.DecorationImage(
                            image: pw.MemoryImage(
                              fileImage!.readAsBytesSync(),
                            ),
                          ),
                        )),
                    pw.SizedBox(height: 10),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                      child: pdfText(
                        text: 'Contacts',
                        fontSize: 18,
                        color: pdfOffWhite,
                        isBold: true,
                      ),
                    ),
                    pw.Divider(color: pdfOffWhite, thickness: 1.5),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                      child: pdfText(
                        text: 'Phone',
                        fontSize: 14,
                        color: pdfOffWhite,
                        isBold: true,
                      ),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                      child: pdfText(
                        text: "+91 ${txtPhone.text}",
                        fontSize: 14,
                        color: pdfOffWhite,
                        isBold: false,
                      ),
                    ),
                    pw.SizedBox(height: 5),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                      child: pdfText(
                        text: 'Email',
                        fontSize: 14,
                        color: pdfOffWhite,
                        isBold: true,
                      ),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                      child: pdfText(
                        text: txtEmailaddress.text,
                        fontSize: 14,
                        color: pdfOffWhite,
                        isBold: false,
                      ),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                      child: pdfText(
                          text: 'Address',
                          fontSize: 14,
                          color: pdfOffWhite,
                          isBold: true),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                      child: pdfText(
                          text: txtAddress.text,
                          fontSize: 14,
                          color: pdfOffWhite,
                          isBold: false),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                      child: pdfText(
                        text: 'Education',
                        fontSize: 18,
                        color: pdfOffWhite,
                        isBold: true,
                      ),
                    ),
                    pw.Divider(color: pdfOffWhite, thickness: 1.5),
                    ...List.generate(
                        educationlist.length,
                        (index) => pw.Column(children: [
                              pw.Padding(
                                padding: const pw.EdgeInsets.symmetric(
                                    horizontal: 20),
                                child: pdfText(
                                    text: educationlist[index]['Degree'].text,
                                    fontSize: 14,
                                    color: pdfOffWhite,
                                    isBold: false),
                              ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.symmetric(
                                horizontal: 20),
                            child: pdfText(
                                text: educationlist[index]['School Name'].text,
                                fontSize: 14,
                                color: pdfOffWhite,
                                isBold: false),
                          )
                            ])),
                    pw.SizedBox(height: 10),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                      child: pdfText(
                        text: 'Project',
                        fontSize: 18,
                        color: pdfOffWhite,
                        isBold: true,
                      ),
                    ),
                    pw.Divider(color: pdfOffWhite, thickness: 1.5),
                    ...List.generate(projectlist.length,(index)=>pw.Column(
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                          child: pdfText(
                              text: projectlist[index]['Project'].text,
                              fontSize: 14,
                              color: pdfOffWhite,
                              isBold: false),
                        ),
                      ]
                    )),
                    pw.SizedBox(height: 10),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                      child: pdfText(
                        text: 'Skill',
                        fontSize: 18,
                        color: pdfOffWhite,
                        isBold: true,
                      ),
                    ),
                    pw.Divider(color: pdfOffWhite, thickness: 1.5),
                    ...List.generate(skilllist.length,(index)=>pw.Column(
                        children: [
                          pw.Padding(
                            padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                            child: pdfText(
                                text: skilllist[index].text,
                                fontSize: 14,
                                color: pdfOffWhite,
                                isBold: false),
                          ),
                        ]
                    )),
                    pw.SizedBox(height: 10),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                      child: pdfText(
                        text: 'Hobbies',
                        fontSize: 18,
                        color: pdfOffWhite,
                        isBold: true,
                      ),
                    ),
                    pw.Divider(color: pdfOffWhite, thickness: 1.5),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                      child: pdfText(
                          text: txthobbie.text,
                          fontSize: 14,
                          color: pdfOffWhite,
                          isBold: false),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                      child: pdfText(
                        text: 'Language',
                        fontSize: 18,
                        color: pdfOffWhite,
                        isBold: true,
                      ),
                    ),
                    pw.Divider(color: pdfOffWhite, thickness: 1.5),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                      child: pdfText(
                          text: txtlanguage.text,
                          fontSize: 14,
                          color: pdfOffWhite,
                          isBold: false),
                    ),
                  ]),
            ),
          ),
          pw.SizedBox(width: 10),
          pw.Expanded(
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
               pw.Row(
                 children: [ pdfText(
                   text: txtFirstName.text,
                   fontSize: 30,
                   color: pdfBlue,
                   isBold: true,
                 ),
                   pw.SizedBox(width: 5),
                   pdfText(
                   text: txtLastName.text,
                   fontSize: 30,
                   color: pdfBlue,
                   isBold: true,
                 ),]
               ),
                pw.SizedBox(height: 10),
                pdfText(
                  text: txtProfession.text,
                  fontSize: 20,
                  color: pdfBlack,
                  isBold: false,
                ),
                pw.SizedBox(height: 10),
                pdfText(
                    text: txtSummary.text,
                    fontSize: 14,
                    color: pdfGrey,
                    isBold: false),
                pw.SizedBox(height: 20),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                  child: pdfText(
                    text: 'Work History',
                    fontSize: 18,
                    color: PdfColors.black,
                    isBold: true,
                  ),
                ),
                pw.Divider(color: PdfColors.black, thickness: 1.5),
                ...List.generate(worklist.length,(index)=>pw.Column(
                    children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                        child: pdfText(
                            text: worklist[index]['Employer'].text,
                            fontSize: 14,
                            color: PdfColors.black,
                            isBold: false),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                        child: pdfText(
                            text: worklist[index]['Job'].text,
                            fontSize: 14,
                            color: PdfColors.black,
                            isBold: false),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                        child: pdfText(
                            text: worklist[index]['Start Date'].text,
                            fontSize: 14,
                            color: PdfColors.black,
                            isBold: false),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                        child: pdfText(
                            text: worklist[index]['End Date'].text,
                            fontSize: 14,
                            color: PdfColors.black,
                            isBold: false),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                        child: pdfText(
                            text: worklist[index]['Description'].text,
                            fontSize: 14,
                            color: PdfColors.black,
                            isBold: false),
                      ),
                    ]
                )),
                pw.SizedBox(height: 20),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                  child: pdfText(
                    text: 'Achievement',
                    fontSize: 18,
                    color: PdfColors.black,
                    isBold: true,
                  ),
                ),
                pw.Divider(color: PdfColors.black, thickness: 1.5),
                ...List.generate(achievementlist.length,(index)=>pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                        child: pdfText(
                            text: achievementlist[index]['Achievement'].text,
                            fontSize: 14,
                            color: PdfColors.black,
                            isBold: false),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                        child: pdfText(
                            text: achievementlist[index]['Description'].text,
                            fontSize: 14,
                            color: PdfColors.black,
                            isBold: false),
                      ),
                      pw.SizedBox(height: 20),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(horizontal: 10),
                        child: pdfText(
                          text: 'Reference',
                          fontSize: 18,
                          color: PdfColors.black,
                          isBold: true,
                        ),
                      ),
                      pw.Divider(color: PdfColors.black, thickness: 1.5),
                      ...List.generate(referencelist.length,(index)=>pw.Column(
                          children: [
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                              child: pdfText(
                                  text: referencelist[index]['Reference Name'].text,
                                  fontSize: 14,
                                  color: PdfColors.black,
                                  isBold: false),
                            ),
                            pw.SizedBox(height: 10),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                              child: pdfText(
                                  text: referencelist[index]['Job Title'].text,
                                  fontSize: 14,
                                  color: PdfColors.black,
                                  isBold: false),
                            ),
                            pw.SizedBox(height: 10),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                              child: pdfText(
                                  text: referencelist[index]['Email Address'].text,
                                  fontSize: 14,
                                  color: PdfColors.black,
                                  isBold: false),
                            ),
                            pw.SizedBox(height: 10),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                              child: pdfText(
                                  text: referencelist[index]['Company Name'].text,
                                  fontSize: 14,
                                  color: PdfColors.black,
                                  isBold: false),
                            ),
                            pw.SizedBox(height: 10),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(horizontal: 20),
                              child: pdfText(
                                  text: referencelist[index]['Phone'].text,
                                  fontSize: 14,
                                  color: PdfColors.black,
                                  isBold: false),
                            ),
                          ]
                      )),
                    ]
                )),
              ],
            ),
          ),
        ]),
      ]);
    },
  ));
  return pdf.save();
}
