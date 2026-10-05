import 'package:flutter/material.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({Key? key}) : super(key: key);

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appear: GlobalAppBarComponent(
            title: Text(
          "news feed",
          style: TextStyle(color: Colors.white),
        )),
        body: Column(
          children: [Text(data)],
        ));
  }
}
