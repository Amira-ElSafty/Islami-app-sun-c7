import 'package:flutter/material.dart';
import 'package:flutter_islami_app_sun_c7/hadeth/hadeth_tab.dart';
import 'package:flutter_islami_app_sun_c7/hadeth/item_hadeth_details.dart';
import 'package:flutter_islami_app_sun_c7/my_theme.dart';
import 'package:flutter_islami_app_sun_c7/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth-details-screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(children: [
      provider.isDarkMode()
          ? Image.asset(
              'assets/images/main_background_dark.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/main_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text('${args.title}',
              style: Theme.of(context).textTheme.headline1),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              color: MyThemeData.whiteColor,
              borderRadius: BorderRadius.circular(24)),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetails(name: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    ]);
  }
}
