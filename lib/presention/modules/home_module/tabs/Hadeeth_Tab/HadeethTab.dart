import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_flutter_app/core/asset_managers.dart';
import 'package:quran_flutter_app/presention/modules/home_module/tabs/Hadeeth_Tab/hadith_widget/hadith_header_widgets.dart';
import 'package:quran_flutter_app/presention/modules/home_module/tabs/Hadeeth_Tab/hadith_widget/hadith_title_widgets.dart';

class HadeethTab extends StatefulWidget {
   HadeethTab({super.key});

  @override
  State<HadeethTab> createState() => _HadeethTabState();
}

class _HadeethTabState extends State<HadeethTab> {
   List<Hadith> hadithList =[];

  @override
  Widget build(BuildContext context) {
    if(hadithList.isEmpty)HadithReadFile();
    return  Container(
     child: Column(
       children: [
         Expanded(flex: 1,
             child: Image.asset(AssetsManager.HadithImage)),
         HadithHeaderWidgets(),
         Expanded(
           flex: 2,
           child:
           hadithList.isEmpty
               ?Center(child: CircularProgressIndicator(color: Theme.of(context).dividerColor,),):
           ListView.separated(
             separatorBuilder: (context,index)=> Divider(
               color: Theme.of(context).dividerColor,
               thickness: 1,
               height: 0,
             ),
               itemBuilder:
               (context,index)=>  HadithTitleWidgets(hadith: hadithList[index]),
               itemCount: hadithList.length
               ),
         ),

       ],
     ),
    );
  }

  void HadithReadFile()async{
    var HadithContent = await  rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadithItemList = HadithContent.trim().split('#');
    for(int i =0;i<ahadithItemList.length;i++) {
      String hadithItem = ahadithItemList[i];
      List<String>hadithLines = hadithItem.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      Hadith hadith =Hadith(title:title ,content: content);
      hadithList.add(hadith);
    }
setState(() {

});
  }
}

class Hadith{
  String title;
  String content;
  //int index;
  Hadith({required this.title,required this.content,});
}