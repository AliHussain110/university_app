import 'package:flutter/material.dart';
import '../../models/grade.dart';

class GradeBox extends StatelessWidget {
  final Grade obj;
  final int subjectIndex;
  GradeBox(this.obj, this.subjectIndex, {super.key});
  final List<String> marksText = [
    'Quiz(10%)',
    'Mid Term(40%)',
    'Final Term(50%)',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: obj.subjects[subjectIndex]['Marks'].length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            constraints: BoxConstraints.expand(
              height: MediaQuery.of(context).size.height * 0.27,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(marksText[index]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Text(
                            '${obj.subjects[subjectIndex]['Marks'][index]['om']}',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Text(
                          'OBTAIN MARKS',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Text(
                            '${obj.subjects[subjectIndex]['Marks'][index]['tm']}',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Text(
                          'TOTAL MARKS',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Text(
                            '${obj.subjects[subjectIndex]['Marks'][index]['per']}',
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Text(
                          'PERCENTAGE%',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
