import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/widgets/drawer/scholership.dart';
import 'aboutus.dart';
import 'acedmics.dart';
import 'admission.dart';
import 'directory.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //width: 200,
      width: MediaQuery.of(context).size.width * 0.45,
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUs(),
                  ),
                );
              },
              child: Column(
                children: [
                  Image(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.1,
                    image: AssetImage(
                      'assets/images/superior.png',
                    ),
                  ),
                  Text(
                    'About Superior',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdmissionPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/admission.svg',
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.1,
                    // ignore: deprecated_member_use
                    color: const Color(0xff8d207b),
                  ),
                  const Text(
                    'Admissions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScholerShipPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/scholarship.svg',
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.1,
                    // ignore: deprecated_member_use
                    color: const Color(0xff8d207b),
                  ),
                  const Text(
                    'ScholerShips',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Directories(),
                  ),
                );
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/director.svg',
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.1,
                    // ignore: deprecated_member_use
                    color: const Color(0xff8d207b),
                  ),
                  const Text(
                    'Directory',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Academics(),
                  ),
                );
              },
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/acadmics.svg',
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.1,
                    // ignore: deprecated_member_use
                    color: const Color(0xff8d207b),
                  ),
                  const Text(
                    'Acadmics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
