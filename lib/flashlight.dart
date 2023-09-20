import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class flashlight extends StatefulWidget {

  @override
  State<flashlight> createState() => flashlightstate();
}

class flashlightstate extends State<flashlight> {
  var isActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple.shade50,
          title: Center(child: Text("Flashlight App",
            style: TextStyle(fontSize: 26, color: Colors.black),))),
      backgroundColor: Colors.deepPurple.shade100,
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Column(
      children: [
        SizedBox(
          height: 100,
        ),
      Image.asset(
        isActive ? 'assets/flashon.png' : 'assets/flashoff.png',
        height: 200,
        width: 200,
        color: isActive ? null : Colors.yellowAccent.shade100,
        fit: BoxFit.cover,
      ),
        SizedBox(
          height: 100,
        ),

      CircleAvatar(
        minRadius: 30,
        maxRadius: 45,
        child:
        IconButton(
            onPressed: () {
              controller.toggle();
              isActive = !isActive;
              setState(() {

              });
            },
            icon: Icon(Icons.power_settings_new),
        ),),

        SizedBox(
          height: 150,
        ),

        SizedBox(
          child: Text("Developed by Shrikant"),
        ),
        ],
    ),],
    ),
    );
  }
}