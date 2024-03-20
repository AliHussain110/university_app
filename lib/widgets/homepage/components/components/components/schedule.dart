import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:university_project/widgets/homepage/components/components/components/scheduleapp.dart';

// ignore: must_be_immutable
class Schedule extends StatefulWidget {
  List<Map> classestime;
  Schedule(this.classestime, {super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  String day = DateFormat('EEEE').format(DateTime.now());
  int scheduleIndex = 10;

  @override
  void initState() {
    super.initState();

    switch (day) {
      case 'Monday':
        scheduleIndex = 0;
        break;

      case 'Tuesday':
        scheduleIndex = 1;
        break;
      case 'Wednesday':
        scheduleIndex = 2;
        break;
      case 'Thursday':
        scheduleIndex = 3;
        break;
      case 'Friday':
        scheduleIndex = 4;
        break;

      default:
        scheduleIndex = 0;
    }
    print(scheduleIndex);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('object');

        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ScheduleApp(widget.classestime);
          ;
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.48,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'TimeTable',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.calendar_month),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Text(day),
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 2.9,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.classestime[scheduleIndex]['class'].length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${widget.classestime[scheduleIndex]['class'][index]['time']}',
                          style: const TextStyle(fontSize: 15),
                        ),
                        Text(
                          '${widget.classestime[scheduleIndex]['class'][index]['subject']}',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${widget.classestime[scheduleIndex]['class'][index]['room']}',
                          style: const TextStyle(fontSize: 15),
                        ),
                        const Divider(
                          color: Colors.black,
                          height: 10,
                          thickness: 2.9,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
