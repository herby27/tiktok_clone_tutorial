import 'package:flutter/material.dart';
import 'package:tiktok_clone_tutorial/app_pref.dart';
import 'package:tiktok_clone_tutorial/constants.dart';
import 'package:tiktok_clone_tutorial/views/widgets/screens/add_video_screen.dart';
import 'package:tiktok_clone_tutorial/views/widgets/screens/profile_screen.dart';
import 'package:tiktok_clone_tutorial/views/widgets/screens/search_screen.dart';
import 'package:tiktok_clone_tutorial/views/widgets/screens/video_screen.dart';

import '../custom_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            pageIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: pageIdx,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: 'Search',
          ),
          if (getPrefValue("Role") == "0")
            const BottomNavigationBarItem(
              icon: CustomIcon(),
              label: '',
            ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.message, size: 30),
            label: 'Messages',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: 'Profile',
          ),
        ],
      ),
      body: getPrefValue("Role") == "0"
          ? [
              const VideoScreen(),
              SearchScreen(),
              const AddVideoScreen(),
              const Center(child: Text('Messages Screen')),
              ProfileScreen(uid: authController.user.uid),
            ][pageIdx]
          : [
              const VideoScreen(),
              SearchScreen(),
              // const AddVideoScreen(),
              const Center(child: Text('Messages Screen')),
              ProfileScreen(uid: authController.user.uid),
            ][pageIdx],
    );
  }
}
