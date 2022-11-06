import 'package:flutter/material.dart';

class CommunityPostTag extends StatelessWidget {
  const CommunityPostTag({
    Key? key,
    required this.tag,
    this.margin,
  }) : super(key: key);

  final String tag;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Color.fromRGBO(178, 112, 162, 0.2),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 2,
      ),
      child: Text(
        tag,
        style: TextStyle(
          color: Color(0xFF83458A),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}