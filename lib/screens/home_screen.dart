import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("==========================================",
              style: TextStyle(
                  color: Color(0xff000000), fontWeight: FontWeight.bold)),
          Text("==========================================",
              style: TextStyle(
                  color: Color(0xff000000), fontWeight: FontWeight.bold)),
          Text("welcome",
              style: TextStyle(
                  color: Color(0xff6145a4), fontWeight: FontWeight.bold)),
          Text("==========================================",
              style: TextStyle(
                  color: Color(0xff0c0700), fontWeight: FontWeight.bold)),
          Text("==========================================",
              style: TextStyle(
                  color: Color(0xff000000), fontWeight: FontWeight.bold)),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Text("Start",
                  style: TextStyle(
                      color: Color(0xfff4a836), fontWeight: FontWeight.bold)),
              Text("Menu",
                  style: TextStyle(
                      color: Color(0xfff4a836), fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
