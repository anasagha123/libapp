import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libapp/Screens/PdfScreen/PdfDetailScreen.dart';
import 'package:libapp/components/lectureCard.dart';

class CollageLecturesScreen extends StatelessWidget {
  CollageLecturesScreen({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.7,
                children: [
                  for(int i =0; i<20; i++)
                    LectureCard(
                      tag: i,
                      LectureName: 'Lecture - $i',
                      PDFName: 'assets/PDF/anas.pdf',
                      price: '10 \$',
                      imgPath: '',
                      isbought: true,
                      isdownloaded: true,
                      ontap: (){
                        Get.to(PDFDetail(PDFName: 'assets/PDF/anas.pdf',));
                        },
                      )
                ]
          )
        );
  }
}