import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDown extends StatelessWidget {
  final List<String> data;
  final String hint;
  final double? width;
  final double? height;
  final double paddingBottom;
  final double paddingTop;
  String? Function(String?)? validation;
  RxString chosenValue1;


  DropDown({
    required this.data,
    required this.hint,
    this.height,
    this.width = 256,
    this.paddingBottom = 0,
    this.paddingTop = 0,
    this.validation,
    required this.chosenValue1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
        () => SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.only(bottom: paddingBottom, top: paddingTop),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
            iconSize: 30,
            isExpanded: true,
            value: (chosenValue1.value=='')?null:chosenValue1.value,
            validator: validation,
            items: data.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text(
              hint,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            onChanged: (String? value) {
                chosenValue1.value = value!;
            },
          ),
        ),
      )
      );
  }
}