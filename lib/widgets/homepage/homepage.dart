import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import '/widgets/settings/settingmain.dart';
import '../drawer/drawer.dart';
import '/widgets/notification/notification.dart';
import '../grade/grades.dart';
import '../profile/studentprofile.dart';
import '/widgets/homepage/components/dashboard.dart';
import '/models/users.dart';

class HomePage extends StatefulWidget {
  final int index;
  const HomePage(this.index, {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int screensIndex = 0;
  int userIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.grade,
    Icons.notifications,
    Icons.settings,
  ];
  late final List<Widget> _screens = [
    Dashboard(UsersData[widget.index], widget.index),
    StudentGrade(UsersData[widget.index], widget.index),
    const StudentNotification(),
    const Settings(),
    Text('${userIndex}'),
  ];
  final List<String> titlepage = [
    'DashBoard',
    'Student Grades',
    'Notifications',
    'Setting',
  ];
  DateTime? _currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titlepage[screensIndex]),
        automaticallyImplyLeading: false,

        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: SvgPicture.asset(
        //         'assets/images/drawer.svg',
        //         // ignore: deprecated_member_use
        //         color: Colors.white,
        //         width: 22,
        //         height: 22,
        //       ),
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //       },
        //     );
        //   },
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Profile(UsersData[widget.index].userinfo[widget.index]);
              },
            ),
          );
        },
        child: const Icon(
          Icons.person,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        // elevation: 9.8,
        height: MediaQuery.of(context).size.height * 0.09,
        iconSize: 30,
        icons: _icons,
        inactiveColor: Colors.black,
        activeColor: Colors.purple,
        activeIndex: screensIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) {
          setState(() {
            screensIndex = index;
          });
        },
      ),
      endDrawer: const MyDrawer(),
      body: _screens[screensIndex],
    );
  }
}
