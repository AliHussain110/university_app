import 'package:flutter/material.dart';

class Academics extends StatelessWidget {
  Academics({super.key});
  final List<String> text = [
    'Faculty Of Computer Science',
    'Faculty Of Information Technology',
    'Faculty Of Software Engineering',
    'Faculty Of Physics',
    'Faculty Of Data Science',
    'Faculty Of IoT',
    'Faculty Of Chemistry',
    'Faculty Of Chemistry',
    'Faculty Of Chemistry',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Academics'),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(
          height: 630,
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
