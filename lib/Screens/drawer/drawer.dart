import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sidebarx/sidebarx.dart';

class ExampleSidebarX extends StatelessWidget {
  ExampleSidebarX({
    Key? key,
    required this.controller,
    required this.currentIndex,

  }): super(key: key);

  var currentIndex = 0.obs;
  var controller = SidebarXController(selectedIndex: 0, extended: false);

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 72, 31, 221),
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.purple,
          ),
          gradient: const LinearGradient(
            colors: [Color.fromARGB(255, 72, 31, 221), Color.fromARGB(255, 38, 9, 118)],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 38, 9, 118),
        ),
      ),
      footerDivider: Container(height: 1,color: Colors.purple[400],),
      headerBuilder: (context, extended) {
        return const SizedBox(
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            // child: Image.asset('assets/images/avatar.png'),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
          onTap: () {
            currentIndex.value = 0;
          },
        ),
        SidebarXItem(
          icon: Icons.my_library_books,
          label: 'my lectures',
          onTap: (){
            currentIndex.value = 1;
          },
        ),
        SidebarXItem(
          icon: Icons.school,
          label: 'collage lectures',
          onTap: (){
            currentIndex.value = 2;
          },
        ),
        SidebarXItem(
          icon: Icons.wallet,
          label: 'my wallet',
          onTap: (){
            currentIndex.value = 3;
          },
        ),
      ],
    );
  }
}