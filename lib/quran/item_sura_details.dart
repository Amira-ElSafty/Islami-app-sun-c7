import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
  String name;

  ItemSuraDetails({required this.name});

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
