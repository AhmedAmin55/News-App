import 'package:flutter/material.dart';
import 'package:newsapp_clone1/view/home_screen.dart';

main() {
  runApp(NewsApp2());
}

class NewsApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
