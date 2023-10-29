import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libapp/Screens/collageScreen/collageScreen.dart';
import 'package:libapp/Screens/drawer/drawer.dart';
import 'package:libapp/Screens/homeScreen/homeScreen.dart';
import 'package:libapp/Screens/myLectures/myLecturesScreen.dart';
import 'package:libapp/Screens/myWalletScreen/Electronic_Wallet.dart';
import 'package:sidebarx/sidebarx.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  var currentIndex = 0.obs;

  var myController = SidebarXController(
    selectedIndex: 0,
    extended: false,
    );

  List<Widget> Screens = [
    HomeScreen(),
    MylecturesScreen(),
    CollageLecturesScreen(),
    ElectronicWallet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: AppBar(title: Text('Library App')),
          drawer: ExampleSidebarX(controller: myController, currentIndex: currentIndex,),
          body: Screens[currentIndex.value],
        ),
    );
  }
}