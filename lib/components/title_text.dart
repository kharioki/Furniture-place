import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;

  const TitleText({
    Key key,
    @required this.defaultSize,
    this.title,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize * 1.6, // 16
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
