import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'flashlight.dart';
void main()
{
  TorchController().initialize();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flashlight",
      debugShowCheckedModeBanner: false,
      home: flashlight(),
    );
  }
}