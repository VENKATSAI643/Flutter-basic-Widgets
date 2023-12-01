import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Container(
          child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    final Snackbar = SnackBar(
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                          textColor: Colors.cyan[200],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        behavior: SnackBarBehavior.floating,
                        padding: const EdgeInsets.all(20),
                        duration: const Duration(milliseconds: 3000),
                        backgroundColor: Colors.amber[300],
                        content: const Text("This is a SnackBar"));
                    ScaffoldMessenger.of(context).showSnackBar(Snackbar);
                  },
                  child: const Text("Show")))),
    );
  }
}
