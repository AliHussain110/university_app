import 'package:flutter/material.dart';
import '/models/director.dart';

class Directories extends StatelessWidget {
  const Directories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Directory'),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: ListView.builder(
          itemCount: dindex.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(15),
              constraints: BoxConstraints.expand(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Text(dindex[index].image),
                  ),
                  Text(
                    dindex[index].name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    dindex[index].role,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
