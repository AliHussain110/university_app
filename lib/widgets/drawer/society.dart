import 'package:flutter/material.dart';

class Societies extends StatelessWidget {
  Societies({super.key});
  final List<String> text = [
    'IEE',
    'English Literature',
    'Language',
    'Blood Donations',
    'Character Building',
    'Sports',
    'Entrepreneurship',
    'Music',
    'Islamic Society',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(
          height: 550,
        ),
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        child: ListView.builder(
          itemCount: text.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAlias,
              child: ExpansionTile(
                title: Text(
                  text[index],
                ),
                children: const [Text("Expanded content")],
              ),
            );
          },
        ),
      ),
    );
  }
}
