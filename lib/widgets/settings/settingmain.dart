import 'package:flutter/material.dart';
import 'package:university_project/widgets/settings/password.dart';

import '../login/login.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ChangePasswordForm();
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(15),
              constraints: const BoxConstraints.expand(
                height: 60,
                // width: double.infinity,
              ),
              child: const Text(
                'Change password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(15),
            constraints: const BoxConstraints.expand(
              height: 60,
              // width: double.infinity,
            ),
            child: const Text(
              'Help',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(15),
              constraints: const BoxConstraints.expand(
                height: 60,
                // width: double.infinity,
              ),
              child: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
