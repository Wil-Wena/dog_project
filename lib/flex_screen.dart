import 'package:dog_project/flexible.dart';
import 'package:dog_project/labeled_container.dart';
import 'package:flutter/material.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible and Expanded'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ..._header(context, 'Expanded'),
          _buildExpanded(context),
          ..._header(context, 'Flexible'),
          _buildFlexible(context),
        ],
      ),
    );
  }

  Iterable<Widget> _header(BuildContext context, String text) {
    return [
      const SizedBox(height: 20),
      Text(
        text,
        style: Theme.of(context).textTheme.headlineSmall,
      )
    ];
  }

  Widget _buildExpanded(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          LabeledContainer(text: '100', width: 100, color: Colors.green),
          Expanded(
              child: LabeledContainer(
            text: "The Remainder",
            textColor: Colors.white,
            color: Colors.purple,
          )),
          LabeledContainer(
            text: '40',
            width: 40,
            color: Colors.green,
          )
        ],
      ),
    );
  }

  Widget _buildFlexible(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(children: [
        FlexibleLabel(flex: 1, flexColor: Colors.orange, textSize: '25%'),
        FlexibleLabel(flex: 1, flexColor: Colors.deepOrange, textSize: '25%'),
        FlexibleLabel(flex: 2, flexColor: Colors.blue, textSize: '50%')
      ]),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container();
  }
}
