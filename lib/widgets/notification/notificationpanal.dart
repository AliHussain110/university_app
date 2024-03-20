import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '/models/noftificationmodel.dart';

class NotificationsPanal extends StatelessWidget {
  const NotificationsPanal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.26,
          margin: const EdgeInsets.only(top: 15),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: note[0].images.map(
              (item) {
                return Image.asset(
                  item['img'],
                  fit: BoxFit.fill,
                );
              },
            ).toList(),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          margin: const EdgeInsets.only(
            top: 5,
            bottom: 5,
          ),
          height: MediaQuery.of(context).size.height * 0.45,
          child: ListView.builder(
            itemCount: note[0].text.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(10),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // clipBehavior: Clip.antiAlias,
                child: ExpansionTile(
                  title: Text(
                    note[0].text[index],
                  ),
                  children: const [Text("Expanded content")],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
