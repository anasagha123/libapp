import 'package:flutter/material.dart';
import 'package:get/get.dart';

String? validate(String? text){}

class InputField extends StatelessWidget{

  

  final TextEditingController controller;
  final double? height;
  final double? width;
  final double paddingBottom;
  final double paddingTop;
  final String? hint;
  final String ?label;
  final Icon? prefix;
  final bool isPassword;
  final TextInputType? textInputType;
  final String? Function(String?)? validation;
  final void Function()? onTap;
  RxBool? isHidden;

    InputField({
  super.key,
  required this.controller,
  this.height,
  this.width = 256,
  this.paddingTop = 0,
  this.paddingBottom = 0,
  this.hint ,
  this.label,
  this.prefix,
  this.isPassword = false,
  this.textInputType,
  this.validation = validate,
  this.onTap
  }
  ) {
  isHidden = RxBool(isPassword);
  
  } 


  @override
  Widget build(BuildContext context) =>  Obx(
    () => Container(
      padding: EdgeInsets.only(bottom: paddingBottom,top: paddingTop),
      height: height,
      width: width,
      child: TextFormField(
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(

        label: (label==null)?null :Text('$label'),
        focusedBorder: const OutlineInputBorder( 

          borderSide:BorderSide(
            color: Color.fromARGB(255, 83, 29, 231),
          ) ,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ) ,
        enabledBorder: const OutlineInputBorder( 

          borderSide:BorderSide(
            color: Color.fromARGB(255, 83, 29, 231),
          ) ,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
       border:  const OutlineInputBorder( 
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
          
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey[400]),
        prefixIcon: prefix,
        suffixIcon: (isPassword)?IconButton(onPressed: () {
          isHidden!.value = !isHidden!.value;
        },
        icon: (isHidden!.value)?Icon(Icons.lock):Icon(Icons.remove_red_eye),
        ):null,
        ),
        obscureText: isHidden!.value,
        validator: validation,
        onTap: onTap,
      ),
    )
  );
  
}