import 'package:flutter/material.dart';
import 'package:flutter_islami_app_sun_c7/quran/Sura_details_screen.dart';

class ItemSuraName extends StatelessWidget {
  String name;

  int index;

  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
              arguments: SuraDetailsArgs(name: name, index: index));
        },
        child: Text(
          name,
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
