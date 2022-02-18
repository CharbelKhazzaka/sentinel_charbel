import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentinel/Screens/patient_list.dart';
import 'package:sentinel/Screens/patient_priority_list.dart';
import 'package:sentinel/Screens/dashboard.dart';
import 'package:sentinel/Screens/notification.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final List<Widget> screens = [
    Dashboard(),
    ClientPriority(),
    ClientList(),
    Notifications(),
  ];
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(18, 108, 242, 1),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue[900],
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_rounded),
              label: 'patients',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/whiteblood.png',width: MediaQuery.of(context).size.width*0.1,),
              label: 'patient priority',
            ),
            BottomNavigationBarItem(
              icon:Image.asset('assets/whiteblood.png',width: MediaQuery.of(context).size.width*0.1,),
              label: 'patientslist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'notifications',
            ),
          ],
        ),
      ),
    );
  }
}
