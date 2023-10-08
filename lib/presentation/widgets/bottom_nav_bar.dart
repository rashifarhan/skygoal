import 'package:flutter/material.dart';
import 'package:skygoal/core/config/color_config.dart';
import 'package:skygoal/presentation/screens/home_screen.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomePage.indexChangeNotifier,
      builder: (context, newIndex, child) {
        return BottomNavigationBar(
          
          
          type: BottomNavigationBarType.fixed,
          
          currentIndex: newIndex,
          onTap: (index) {
            HomePage.indexChangeNotifier.value = index;
          },
          elevation: 0.0,
          selectedItemColor: Colors.white,
          backgroundColor: ColorConstants.primaryColor,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const[
             BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.save_as),label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.person),label: "Home"),
          ],
        );
      },
    );
  }
}