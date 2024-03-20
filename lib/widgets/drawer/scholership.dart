import 'package:flutter/material.dart';

class ScholerShipPage extends StatelessWidget {
  ScholerShipPage({super.key});
  final List<String> text = [
    'Alumi Scholarships',
    'Superior Discount',
    'Kinship',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Scholership'),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        constraints: const BoxConstraints.expand(
          height: 300,
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
