import 'package:flutter/material.dart';

class Containersized extends StatelessWidget {
  const Containersized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Container and Sized Box',
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        /*child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 150,
            width: 250,
            color: Colors.deepPurple,
            child: const Text(
              'Hello Venkat Sai!!',
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
        ),*/
        child: Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
              color: Colors.deepOrange,
              //borderRadius: BorderRadius.circular(30),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20, spreadRadius: 5, color: Colors.yellowAccent)
              ]),
          child: const Padding(
            padding: EdgeInsets.only(top: 110, left: 70),
            child: Text("Hello Venkat!!"),
          ),
        ),
      ),
    );
  }
}
