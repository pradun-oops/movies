import 'package:flutter/material.dart';

class TabBarText extends StatelessWidget {
  final String text;
  const TabBarText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
