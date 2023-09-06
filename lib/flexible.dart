import 'package:dog_project/labeled_container.dart';
import 'package:flutter/material.dart';

class FlexibleLabel extends StatelessWidget {
  final int flex;
  final Color flexColor;
  final String textSize;
  const FlexibleLabel(
      {super.key,
      required this.flex,
      required this.flexColor,
      required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: flex,
        child: LabeledContainer(
          text: textSize,
          color: flexColor,
        ));
  }
}
