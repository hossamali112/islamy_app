import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c10_thursday/ui/home/hadeth_tab/hadet_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) loadHadethFile();
    return ahadeth.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Container(
            child: Column(
              children: [
                Image.asset('assets/images/hadeth_header_image.png'),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 45),
                    padding: EdgeInsets.all(12),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          width: 2,
                          color: Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                    child: Text(
                      'Ahadeth',
                      style: Theme.of(context).textTheme.titleMedium,
                    )),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          HadethTitleWidget(hadeth: ahadeth[index]),
                      separatorBuilder: (context, index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 45),
                            color: Theme.of(context).dividerColor,
                            width: double.infinity,
                            height: 2,
                          ),
                      itemCount: ahadeth.length),
                )
              ],
            ),
          );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allAhadeth = fileContent.trim().split('#');
    for (int i = 0; i < allAhadeth.length; i++) {
      List<String> hadethLines = allAhadeth[i].trim().split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(title: title, content: hadethContent);
      ahadeth.add(hadeth);
      print(title);
      print(hadethContent);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth({required this.title, required this.content});
}
