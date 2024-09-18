import 'package:flutter/material.dart';
import 'package:newsapp_clone1/widgets/loding_condition.dart';

class NewsFromCard extends StatelessWidget {
  const NewsFromCard({super.key, required this.q});
  final String q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 200, 35),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            BodyView(
              q: q,
            ),
          ],
        ),
      ),
    );
  }
}
