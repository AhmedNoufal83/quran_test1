import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_flutter_app/presention/modules/home_module/screens/Quran_detailes_screen/wedgits/verse-widgets.dart';
import 'package:quran_flutter_app/presention/modules/home_module/tabs/Quran_Tab/QuranTab.dart';

import '../../../../../core/asset_managers.dart';

class QuranDetailsScreen extends StatefulWidget {
   QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> ListofVerses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
   if (ListofVerses.isEmpty) QuranReadFile(suraItem.index+1);

    return  Stack(
      children: [
        Image.asset(AssetsManager.bgLight,fit: BoxFit.fill,width: double.infinity,),
        Scaffold(
          appBar: AppBar(
          title: Text(suraItem.suraName),
          ),
          body: ListofVerses.isEmpty ?  Center (child:CircularProgressIndicator(color: Theme.of(context).dividerColor,),):ListView.builder(itemBuilder: (context,index)=>VerseWidgets(verse:ListofVerses[index]),itemCount:ListofVerses.length)
        )

      ],
    );
  }

  void QuranReadFile(int index)async{
  String fileContent = await  rootBundle.loadString('assets/files/$index.txt');

 // suraLinesList.forEach((element) {print (element);});
  setState(() {
    ListofVerses =   fileContent.trim().split('\n');
  });
  }
}
