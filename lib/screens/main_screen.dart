import "package:flutter/material.dart";
class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  final List<Widget> pages = comet [
     NewsfeedScreen(),
     FriendScreen(),
     NotificationScreen(),
     ProfileScreen(),
  ];

  int currentpage = 0,

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    body: pages[currentpage],

    bottomnavigationbar: BottomNavigationBar(
      backgroundColor: Colors.blue,
      currentIndex: currentpage,
      onTap: ,


      icon: Icon(Icons.home),
      label: "home"
  


    )
  }
}