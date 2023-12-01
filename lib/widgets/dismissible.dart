import 'package:flutter/material.dart';

class DismissbleWideget extends StatefulWidget {
  const DismissbleWideget({super.key});

  @override
  State<DismissbleWideget> createState() => _DismissbleWidegetState();
}

class _DismissbleWidegetState extends State<DismissbleWideget> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Grapes', 'Banana'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Center(
            child: Text(
          "Dismissible Widget",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.deepOrange[400],
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green[400],
                  ));
                }
              },
              key: Key(fruit),
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              child: ListTile(
                title: Text(fruits[index]),
              ));
        },
        itemCount: fruits.length,
      ),
    );
  }
}
