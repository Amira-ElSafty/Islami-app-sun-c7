import 'package:flutter/material.dart';
import 'package:flutter_islami_app_sun_c7/hadeth/hadeth_details_screen.dart';
import 'package:flutter_islami_app_sun_c7/hadeth/hadeth_tab.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(HadethDetailsScreen.routeName, arguments: hadeth);
        },
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
