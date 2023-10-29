import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libapp/Screens/mainPage.dart';
import 'package:libapp/components/Button.dart';
import 'package:libapp/components/InputField.dart';

class LoginScreen extends StatelessWidget {
   validation(){
    formkey.value.currentState!.validate();
    Get.off(MainPage());
   }
  var formkey=GlobalKey<FormState>().obs;
  var TextControler1=TextEditingController();
  var TextControler2=TextEditingController();
   LoginScreen({super.key});
   
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      
        body: Container(
         child: SingleChildScrollView(
           child: Column(
             children: <Widget>[
               Container(
                 height: 350,
                 decoration: const BoxDecoration(
                   image:DecorationImage(image: AssetImage('assets/image/background.png'),
                   fit: BoxFit.fill,
                   ),
                   
                 ),
                 child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 170,
                      child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/light-1.png'),
                        )
                      ) ,
                    ),
                    ),
                     Positioned(
                      left: 110,
                      width: 80,
                      height: 130,
                      child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/light-2.png'),
                        )
                      ) ,
                    ),
                    ),
                     Positioned(
                      right: 10,
                      top: 10,
                      width: 80,
                      height: 150,
                      child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/image/clock.png'),
                        )
                      ) ,
                    ),
                    ),
                    Positioned(child: Container(
                      margin: EdgeInsets.only(top: 60),
                      child: const Center(
                        child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                      ),
                    ))
                  ],
                 ),
               ),
               Padding(
                padding: const EdgeInsets.all(30.3),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
         
                    ),
                    child: Column(
                      children: <Widget>[
                     
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            
                          ),
                          child: 
                            Obx(()=>
                              Form(
                                key: formkey.value,
                                child:  Column(
                                  children:<Widget>[ 
                                    InputField(
                                      validation: (Text){
                                       if(Text!.isEmpty)
                                       return "Text Can't be empty";
                                      },
                                  controller: TextControler1,
                                  hint: "email or phone or id student",
                                  ),
                                  SizedBox(height: 10,),
                                    InputField(
                                       validation: (Text){
                                       if(Text!.isEmpty)
                                       return "Text Can't be empty";
                                      },
                                  controller: TextControler2,
                                  textInputType: TextInputType.number,
                                  hint: "#code",
                                  ),
                                  SizedBox(height: 10,),
                                  Button(
                                    function: validation,
                                    text: "submit",
                                    color: Color.fromARGB(255, 83, 29, 231),
                                    height: 40,
                                    width: 170,
                                    ),
                                  SizedBox(height: 10,),
                                  Button(
                                    function: (){
                                      Get.to(MainPage());
                                    },
                                    text: "Admin Login",
                                    color: Color.fromARGB(255, 83, 29, 231),
                                    height: 40,
                                    width: 170,
                                    )
                                                   ], ),),
                            )),
                      ],
                    ),
                  )
                ]),
                ),
             ],
           ),
         ),
        )
            );
         
        
    

     
    
  }
}