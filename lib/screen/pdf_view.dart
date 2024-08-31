import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_builder/screen/pdf_generator.dart';
import 'package:resume_builder/utils/global.dart';

class PdfViewPage extends StatefulWidget {
  const PdfViewPage({super.key});

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        pdfFileName: "${txtFirstName.text} resume",
        build: (format) =>  pdfGenerator(),
      ),
    );
  }
}