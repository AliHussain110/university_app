import 'dart:math';

import 'package:flutter/material.dart';
import '/models/grade.dart';
import '../../models/users.dart';
import 'gradebox.dart';

class StudentGrade extends StatefulWidget {
  final UsersProfile user;
  final int userIndex;

  const StudentGrade(
    this.user,
    this.userIndex, {
    super.key,
  });

  @override
  State<StudentGrade> createState() => _StudentGradeState();
}

class _StudentGradeState extends State<StudentGrade> {
  int subjectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 17,
        bottom: 50,
      ),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints.expand(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:
                  widget.user.usergrades[widget.userIndex].subjects.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(6),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: subjectIndex == index ? Colors.white : Colors.black,
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(50),
                      right: Radius.circular(50),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print(index);
                        subjectIndex = index;
                      });
                    },
                    child: Text(
                      '${widget.user.usergrades[widget.userIndex].subjects[index]['Subjects']}',
                      style: TextStyle(
                        color:
                            subjectIndex == index ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          GradeBox(widget.user.usergrades[widget.userIndex], subjectIndex),
        ],
      ),
    );
  }
}
