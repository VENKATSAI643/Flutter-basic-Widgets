import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[100],
        title: const Center(
            child: Text(
          "Bottom Sheet Widget",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  elevation: 0,
                  isDismissible: true,
                  enableDrag: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  context: context,
                  builder: (context) {
                    return const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text("Orange"),
                          subtitle: Text("Venkat"),
                        ),
                        ListTile(
                          title: Text("Mango"),
                          subtitle: Text("Sai"),
                        ),
                        ListTile(
                          title: Text("Apple"),
                          subtitle: Text("Kancherla"),
                        ),
                        ListTile(
                          title: Text("Banana"),
                          subtitle: Text("Venky"),
                        ),
                      ],
                    );
                  });
            },
            child: const Text("Show Buttom Sheet")),
      ),
    );
  }
}
