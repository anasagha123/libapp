import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:libapp/myPdf.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFView extends StatelessWidget {
  const PDFView({
    super.key,
    required this.PDFName,
    required this.LectureName
    });

  final String PDFName;
  final String LectureName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LectureName),
      ),
      body: SfPdfViewer.memory(base64Decode(myPdf)),
    );
  }
}
