import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Mango', 'Banana'];
  Map fruitsperson = {
    'fruit': ['Orange', 'Apple', 'Banana'],
    'names': ['Venkat', 'Koushik', 'Siddarth']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('List and Grid')),
        backgroundColor: Colors.amber[300],
        elevation: 0,
      ),
      body: Container(
        /*child: ListView.builder(
            itemCount: fruits.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    print((fruitsperson['fruit'][index]));
                  },
                  leading: Icon(Icons.person),
                  title: Text(fruitsperson['fruit'][index]),
                  subtitle: Text(fruitsperson['names'][index]),
                ),
              );
            }),*/

        /*child: ListView(
          children: const [
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Venkat'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Venkat'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Venkat'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Orange'),
                subtitle: Text('Venkat'),
              ),
            )
          ],
        ),*/

        /*child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 2 / 3),
          children: [
            Card(
              child: Center(child: Text('Venkat')),
            ),
            Card(
              child: Center(child: Text('Venkat')),
            ),
            Card(
              child: Center(child: Text('Venkat')),
            ),
            Card(
              child: Center(child: Text('Venkat')),
            ),
            Card(
              child: Center(child: Text('Venkat')),
            ),
            Card(
              child: Center(child: Text('Venkat')),
            ),
            Card(
              child: Center(child: Text('Venkat')),
            )
          ],
        ),*/
        child: GridView.builder(
            itemCount: fruits.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return Card(
                child: Text(fruits[index]),
              );
            }),
      ),
    );
  }
}
