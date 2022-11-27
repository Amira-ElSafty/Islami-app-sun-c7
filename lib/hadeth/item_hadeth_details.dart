import 'package:flutter/material.dart';

class ItemHadethDetails extends StatelessWidget {
  String name;

  ItemHadethDetails({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text(
        name,
        style: Theme.of(context).textTheme.subtitle2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
