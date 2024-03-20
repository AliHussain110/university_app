import 'package:flutter/material.dart';

class AdmissionPage extends StatelessWidget {
  const AdmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Admissions'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints.expand(
              height: 250,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/2.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Start Your Journey At',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  TextSpan(
                    text: ' Superior',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color(0xff8d207b),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              top: 20,
              right: 15,
            ),
            child: const Text(
              'Superior University prepares students to be leaders in their professions. Students at the University benefit from supervision from foreign-qualified instructors in a welcoming academic atmosphere with direct access to unrivalled prospects. Students have easy access to online admission in any course.',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
