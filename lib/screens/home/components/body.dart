import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return SingleChildScrollView(
      child: Column(
        children: [
          TitleText(
            defaultSize: defaultSize,
            title: 'Browse by Categories',
          ),
        ],
      ),
    );
  }
}
