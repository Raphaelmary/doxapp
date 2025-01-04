import 'package:appointmentapp/screens/doctor_details.dart';
import 'package:appointmentapp/screens/homescreen.dart';
import 'package:appointmentapp/screens/messages_screen.dart';
import 'package:appointmentapp/screens/schedule.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:appointmentapp/constants/symptoms.dart';
import '../constants/colorcode.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedMenu = 0;

  final List pages = [
    const HomeScreen(),
    const DoctorDetails(),
    const HomeScreen(),
    const Schedule(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedMenu],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ambercolor,
        type: BottomNavigationBarType.shifting,
        // type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.red,
        iconSize: 25.0,
        elevation: 0,
        unselectedItemColor: grey,
        useLegacyColorScheme: false,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_1),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.calendar),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.setting_2),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedMenu,
        onTap: (val) {
          setState(() {
            selectedMenu = val;
          });
        },
      ),
    );
  }
}
