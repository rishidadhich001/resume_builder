import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Text pdfText({
  required String text,
  required double fontSize,
  required PdfColor color,
  required bool isBold,
}) {
  return pw.Text(
    text,
    maxLines: 4,
    style: pw.TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: isBold ? pw.FontWeight.bold : pw.FontWeight.normal,
      letterSpacing: 1,
    ),
  );
}