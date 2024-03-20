import 'package:flutter/material.dart';
import '/models/timetable.dart';

class FeeTranscript extends StatelessWidget {
  final TimeTable info;
  const FeeTranscript(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.only(
            top: 10,
            //   left: 5,
          ),
          constraints: BoxConstraints.expand(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.48,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.brown,
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Fee',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.money_rounded,
                  ),
                ],
              ),
              const Positioned(
                bottom: 20,
                child: Text(
                  'Due Fee',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 20,
                child: Text(
                  '\t${info.fee}',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Positioned(
                right: -2,
                bottom: 20,
                child: Text(
                  '\t(Pkr)',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(
              top: 15,
              left: 10,
              right: 1,
            ),
            constraints: BoxConstraints.expand(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.48,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Transcript',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.money_rounded,
                    ),
                  ],
                ),
                const Positioned(
                  bottom: 20,
                  child: Text(
                    'CGPA',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  bottom: 25,
                  child: Text(
                    '\t${info.gpa}',
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
