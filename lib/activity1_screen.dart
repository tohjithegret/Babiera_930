import 'package:flutter/material.dart';

class Activity1Screen extends StatefulWidget {
  const Activity1Screen({super.key});

  @override
  State<Activity1Screen> createState() => _Activity1ScreenState();
}

class _Activity1ScreenState extends State<Activity1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity 1"),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text(
            "Activity 1",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Follow this layout step by step",
            style: TextStyle(
              fontSize: 16,
              color: Color(0xffffbc00),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Left Text", style: TextStyle(fontSize: 18)),
              SizedBox(width: 60),
              Text("Right Text", style: TextStyle(fontSize: 18)),
            ],
          ),
          SizedBox(height: 50),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
            child: Center(
              child: Text(
                "Container",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
