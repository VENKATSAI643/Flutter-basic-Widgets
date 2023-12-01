import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: Container(
                  color: Colors.amber[300],
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://qph.cf2.quoracdn.net/main-qimg-134e3bf89fff27bf56bdbd04e7dbaedf.webp'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Venkat Sai',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text('kancherla')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("MyFiles"),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("Shared"),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("Shared with me"),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("Google Drive"),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text("Uploads"),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer Widget"),
      ),
      body: Container(
        child: const Center(
          child: Text("Hey There"),
        ),
      ),
    );
  }
}
