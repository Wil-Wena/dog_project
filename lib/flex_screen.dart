import 'package:dog_project/flexible.dart';
import 'package:dog_project/labeled_container.dart';
import 'package:flutter/material.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
              child: Text(
            'Flexible and Expanded',
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._header(context, 'Expanded'),
            _buildExpanded(context),
            ..._header(context, 'Flexible'),
            _buildFlexible(context),
            Spacer(),
            _buildFooter(context)
          ],
        ),
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
        FlexibleLabel(flex: 2, flexColor: Colors.orange, textSize: '25%'),
        FlexibleLabel(flex: 2, flexColor: Colors.deepOrange, textSize: '25%'),
        FlexibleLabel(flex: 3, flexColor: Colors.blue, textSize: '50%')
      ]),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 30,
          ),
          child: Text(
            'Planned to the Bottom',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ),
    );
  }
}
