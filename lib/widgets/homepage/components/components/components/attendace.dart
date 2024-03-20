import 'package:flutter/material.dart';
import '/models/timetable.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../../models/attendancedata.dart';

import 'attend.dart';

class StudentAttendance extends StatefulWidget {
  final List<Attandance> attend;
  const StudentAttendance(this.attend, {super.key});

  @override
  State<StudentAttendance> createState() => _StudentAttendanceState();
}

class _StudentAttendanceState extends State<StudentAttendance> {
  late num a = 0, lev = 0, lec = 0;
  int abc = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < subjects[0].attendData.length; i++) {
      a += subjects[0].attendData[i]['attend'][0]['atted'];
      lec += subjects[0].attendData[i]['attend'][0]['lec'];
      lev += subjects[0].attendData[i]['attend'][0]['lev'];
    }
    print(a);
    print(lec);
    print(lev);
  }

  late List<Attandance> studattend = [
    Attandance(
      'Lecture',
      a.toInt(),
    ),
    Attandance(
      'Absent',
      lec.toInt(),
    ),
    Attandance(
      'Leave',
      lev.toInt(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Attendance();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        margin: const EdgeInsets.only(
          left: 10,
          bottom: 10,
          // right: 10,
        ),
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height * 0.24,
          width: MediaQuery.of(context).size.width * 0.48,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.cyan,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Attendance',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.calendar_month_rounded),
              ],
            ),
            Expanded(
              // alignment: Alignment.bottomCenter,
              // height: MediaQuery.of(context).size.height * 0.17,
              child: Center(
                child: SfCircularChart(
                  // title: ChartTitle(text: 'Sales by sales person'),
                  legend: Legend(
                    // height: '50%',
                    // overflowMode: LegendItemOverflowMode.scroll,
                    isResponsive: false,
                    isVisible: true,
                    position: LegendPosition.bottom,
                    alignment: ChartAlignment.center,
                  ),
                  series: <DoughnutSeries<Attandance, String>>[
                    DoughnutSeries<Attandance, String>(
                      explode: true,
                      // explodeIndex: 0,
                      enableTooltip: true,
                      dataSource: studattend,
                      xValueMapper: (Attandance data, _) => data.text,
                      yValueMapper: (Attandance data, _) => data.no,
                      dataLabelSettings: const DataLabelSettings(
                          isVisible: true,
                          labelPosition: ChartDataLabelPosition.outside),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
