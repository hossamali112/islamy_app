import 'package:flutter/material.dart';
import 'package:islami_c10_thursday/ui/home/quran_tab/quran_details_screen.dart';

class ChapterTitle extends StatelessWidget {
  String suraTitle;
  int index;

  ChapterTitle({required this.suraTitle, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,
            arguments: SuraArgs(suraName: suraTitle, index: index));
      },
      child: Container(
          alignment: Alignment.center,
          // padding: EdgeInsets.all(12),
          child: Text(
            suraTitle,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
    );
  }
}

class SuraArgs {
  String suraName;
  int index;

  SuraArgs({required this.suraName, required this.index});
}
