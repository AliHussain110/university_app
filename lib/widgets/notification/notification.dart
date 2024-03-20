import 'package:flutter/material.dart';
import '/widgets/notification/notificationpanal.dart';
import '/models/noftificationmodel.dart';

class StudentNotification extends StatelessWidget {
  const StudentNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: note.isNotEmpty
          ? const NotificationsPanal()
          : Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/image1.png'),
                  const Text(
                    'No Notification Found',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
