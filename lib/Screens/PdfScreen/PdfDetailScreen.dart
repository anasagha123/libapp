import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libapp/Screens/PdfScreen/PdfViewScreen.dart';
import 'package:libapp/components/Button.dart';

class PDFDetail extends StatelessWidget {
  final PDFName, cookieprice, cookiename;

  PDFDetail({
    this.PDFName='', 
    this.cookieprice='', 
    this.cookiename=''});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lecture Name',
            style: TextStyle(
                fontSize: 20.0,
                )
              ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Lecture Name',
                style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)
              ),
            ),
              SizedBox(height: 15.0),
              // Hero(
              //   tag: assetPath,
              //   child: Image.asset(assetPath,
              //   height: 150.0,
              //   width: 100.0,
              //   fit: BoxFit.contain
              //   )
              // ),
              SizedBox(height: 20.0),
              Center(
                child: Text(cookiename,
                    style: TextStyle(
                        color: Color(0xFF575E67),
                        fontSize: 24.0)),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Container(
                  child: Text('Lecture Description',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey
                        )
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Button(
                text: 'buy lecture 5 \$',
                color: Colors.blue,
                height: 40,
                width: 10,
                function: (){
                  Get.to(PDFView(PDFName: PDFName,LectureName: '',));
                },
                ),
          ]
        ),
      ),

    );
  }
}