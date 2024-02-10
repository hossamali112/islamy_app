import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c10_thursday/ui/home/quran_tab/chapter_title.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = 'Quran-Details';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments! as SuraArgs;
    if (verses.isEmpty) readQuranFile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraName,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Container(
                //color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    margin: EdgeInsets.all(18),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Expanded(
                        child: ListView.separated(
                      separatorBuilder: (context, index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 23),
                          child: Divider(color: Color(0xFFB7935F))),
                      itemBuilder: (context, index) => Text(
                        '${verses[index]} (${index + 1})',
                        textAlign: TextAlign.center,
                      ),
                      itemCount: verses.length,
                    )),
                  ),
                ),
              ),
      ),
    );
  }

  int add(int n1, int n2) {
    return n1 + n2;
  }

  void readQuranFile(int index) async {
    // print(index);
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;
    // for(int i = 0; i <suraLines.length; i++){
    //   print(suraLines[i]);
    // }
    //print(verses);
    setState(() {});
  }
}
