import 'package:flutter/material.dart';
//import 'package:flutter_container_sized/widgets/animatedtextwidget.dart';
//import 'package:flutter_container_sized/widgets/bottomnavigation.dart';
//import 'package:flutter_container_sized/widgets/dropdownwidget.dart';
//import 'package:flutter_container_sized/widgets/formwidget.dart';
import 'package:flutter_container_sized/widgets/stack.dart';
//import 'package:flutter_container_sized/widgets/alertwidget.dart';
//import 'package:flutter_container_sized/widgets/bottomsheetwidget.dart';
//import 'package:flutter_container_sized/widgets/dismissible.dart';
//import 'package:flutter_container_sized/widgets/drawer.dart';
//import 'package:flutter_container_sized/widgets/image.dart';
//import 'package:flutter_container_sized/widgets/button.dart';
//import 'package:flutter_container_sized/widgets/listgrid.dart';
//import 'package:flutter_container_sized/widgets/snackbar.dart';
//import 'package:flutter_container_sized/widgets/containersized.dart';
//import 'package:flutter_container_sized/widgets/rowscol.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurpleAccent,
      ),
      home: const StackWidget(),
    );
  }
}
