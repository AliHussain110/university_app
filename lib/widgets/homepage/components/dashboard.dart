import 'package:flutter/material.dart';
import '/widgets/homepage/components/components/timetable_attandance_grade.dart';
import '/widgets/homepage/components/components/fee_transcript.dart';
import '/models/users.dart';

class Dashboard extends StatelessWidget {
  final UsersProfile user;
  final int userIndex;
  const Dashboard(
    this.user,
    this.userIndex, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          CombineWidgets(user.usertimetable[userIndex]),
          FeeTranscript(user.usertimetable[userIndex]),
        ],
      ),
    );
  }
}
