import 'package:flutter/material.dart';
import '/widgets/homepage/components/components/components/attendace.dart';
import '/widgets/homepage/components/components/components/gradebook.dart';
import '/widgets/homepage/components//components/components/schedule.dart';
import '/models/timetable.dart';

class CombineWidgets extends StatelessWidget {
  final TimeTable info;
  const CombineWidgets(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Schedule(info.timetable),
        Expanded(
          child: Column(
            children: [
              StudentAttendance(info.attend),
              GradeBook(info.cpga),
            ],
          ),
        ),
      ],
    );
  }
}
