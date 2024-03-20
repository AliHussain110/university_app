import 'package:flutter/material.dart';

import '../../../../../models/attendancedata.dart';

class Attendance extends StatelessWidget {
  // List<AttendanceData> attendlist;
  // const Attendance(this.attend, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: subjects[0].attendData.length,
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
                  Text(
                    '${subjects[0].attendData[index]['Subjects']}',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Text(
                              '${subjects[0].attendData[index]['attend'][0]['atted']}',
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text(
                            'ATTEND CLASSES',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Text(
                              '${subjects[0].attendData[index]['attend'][0]['lev']}',
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text(
                            'TOTAL LEAVES',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Text(
                              '${subjects[0].attendData[index]['attend'][0]['lec']}',
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text(
                            'TOTAL CLASSES',
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
      ),
    );
  }
}
