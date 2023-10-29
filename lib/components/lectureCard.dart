import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libapp/Screens/PdfScreen/PdfViewScreen.dart';
import 'package:libapp/components/Button.dart';

defaultOnTap(){}

class LectureCard extends StatelessWidget {
  LectureCard({
    super.key,
    required this.LectureName,
    required this.PDFName,
    required this.price,
    required this.imgPath,
    required this.isbought,
    required this.isdownloaded,
    required this.tag,
    this.ontap = defaultOnTap,
    });

  final String LectureName;
  final String PDFName;
  final String price; 
  final String imgPath;
  final Object tag;
  bool isbought;
  bool isdownloaded;
  Function ontap;

  ViewPDFIcon()=>SizedBox(
                  height: 20,
                  width: 20,
                  child: IconButton(
                  onPressed: () {
                      Get.to(PDFView(PDFName: PDFName,LectureName: LectureName,));
                      },
                  icon: Icon(
                      Icons.open_in_full_outlined,
                      size: 20.0,
                      ), 
                  color: Color.fromARGB(255, 72, 31, 221),
                  padding: EdgeInsets.zero,
                    ),
                  );

DownloadPDFIcon()=>SizedBox(
                      height: 20,
                      width: 20,
                      child: IconButton(
                      onPressed: () {
                                            
                          },
                      icon: Icon(
                          Icons.get_app,
                          size: 20.0,
                          ), 
                      color: Color.fromARGB(255, 72, 31, 221),
                      padding: EdgeInsets.zero,
                        ),
                    );

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: InkWell(
          onTap: () {
            ontap();
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.deepPurple.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                ),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          isbought
                              ? isdownloaded
                                ? ViewPDFIcon()
                                : Row(
                                  children: [
                                    ViewPDFIcon(),
                                    SizedBox(width: 10,),
                                    DownloadPDFIcon(),
                                  ],
                                )
                              : SizedBox(
                                height: 25,
                                width: 80,
                                child: Button(text: 'Buy $price')
                                )
                        ])),
                Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: AssetImage(imgPath),
                        //     fit: BoxFit.contain)
                            )),
                SizedBox(height: 7.0),
                Text(price,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0)),
                Text(LectureName,
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 14.0)),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
              ]
              )
              )
              ),
    );
  }
}