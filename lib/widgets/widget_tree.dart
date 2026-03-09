import 'package:flutter/material.dart';
import 'package:practice/views/pages/discover.dart';
import 'package:practice/views/pages/location.dart';
import 'package:practice/views/pages/profile.dart';
import 'package:practice/views/pages/settings.dart';
import 'package:practice/views/pages/tools.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getpage(currentIndex),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            color: currentIndex == 0 ? Colors.black : Colors.grey,
            onPressed: () => setState(() => currentIndex = 0),
          ),
          IconButton(
            icon: Icon(Icons.location_on),
            color: currentIndex == 1 ? Colors.black : Colors.grey,
            onPressed: () => setState(() => currentIndex = 1),
          ),
          IconButton(
            onPressed: () => setState(() => currentIndex = 2),
            icon: Icon(Icons.safety_check),
            color: Colors.blue,
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: currentIndex == 3 ? Colors.black : Colors.grey,
            onPressed: () => setState(() => currentIndex = 3),
          ),
          IconButton(
            icon: Icon(Icons.person_3_outlined),
            color: currentIndex == 4 ? Colors.black : Colors.grey,
            onPressed: () => setState(() => currentIndex = 4),
          ),
        ],
      ),
    );
  }

  Widget getpage(int currentindex) {
    if (currentindex == 0) return Tools();
    if (currentindex == 1) return Location();
    if (currentindex == 2) return Settings();
    if (currentindex == 3) return Discover();
    return Profile();
  }
}
