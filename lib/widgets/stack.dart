import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('StackBar'),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 100,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image:
                            AssetImage('assets/desktop-wallpaper-doraemon.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
                top: 150,
                left: 50,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.amber,
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
            )
          ],
        )

        // body: Container(
        //   color: Colors.blue,
        //   child: Center(
        //       child: Stack(
        //     children: [
        //       Positioned(
        //         bottom: 10,
        //         left: 100,
        //         child: Container(
        //           height: 300,
        //           width: 300,
        //           color: Colors.amber,
        //         ),
        //       ),
        //       Positioned(
        //         top: 40,
        //         right: 70,
        //         child: Container(
        //           height: 150,
        //           width: 150,
        //           color: Colors.red,
        //         ),
        //       ),
        //       Positioned(
        //         child: Container(
        //           height: 50,
        //           width: 50,
        //           color: Colors.green,
        //         ),
        //       ),
        //     ],
        //   )),
        // ),
        );
  }
}
