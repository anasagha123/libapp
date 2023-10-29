import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';
import 'package:libapp/Screens/logInScreen/LoginScreen.dart';
import 'package:libapp/Themes/darkTheme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'PDF Viewer';

  @override
  Widget build(BuildContext context)  
    => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: DarkTheme,
        home: LoginScreen(),
      );
}