import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class ScheduleApp extends StatelessWidget {
  List<Map> classestime;
  ScheduleApp(this.classestime, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: ListView.builder(
            itemCount: classestime.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                    Text(classestime[index]['day']),
                    const Divider(
                      color: Colors.black,
                      height: 10,
                      thickness: 2.9,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: ListView.builder(
                        itemCount: classestime[index]['class'].length,
                        itemBuilder: (context, count) {
                          return Column(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${classestime[index]['class'][count]['time']}',
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    '${classestime[index]['class'][count]['subject']}',
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '${classestime[index]['class'][count]['room']}',
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                    height: 10,
                                    thickness: 2.9,
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
