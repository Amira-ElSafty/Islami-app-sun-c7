import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_islami_app_sun_c7/my_theme.dart';
import 'package:flutter_islami_app_sun_c7/quran/item_sura_details.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details-screen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadQuranFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text('${args.name}',
              style: Theme.of(context).textTheme.headline1),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              color: MyThemeData.whiteColor,
              borderRadius: BorderRadius.circular(24)),
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child:
              /*
              condition ? true : false
               */
              verses.length == 0
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return ItemSuraDetails(name: verses[index]);
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Theme.of(context).primaryColor,
                          thickness: 2,
                        );
                      },
                      itemCount: verses.length),
        ),
      ),
    ]);
  }

  void loadQuranFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = fileContent.split('\n');
    print(lines);
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  // data class
  String name;

  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
