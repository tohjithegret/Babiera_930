import "dart:html";
import "package:flutter/material.dart";

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          color: Color(0xff00b2f8),
          child: Column(
            children: [Text("hello"), Text("hi")],
          ),
        )
      ]),
    );
  }
}
