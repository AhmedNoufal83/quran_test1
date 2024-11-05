 import 'package:flutter/material.dart';
import 'package:quran_flutter_app/core/colors_managers.dart';

import '../../../../../../core/routes_managers.dart';
import '../QuranTab.dart';

class SuraNameWidgets extends StatelessWidget {
  //String suraNames;
  //String versesNumber;
  SuraItem suraItem;
  SuraNameWidgets({super.key,required this.suraItem});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.pushNamed(context, RoutesManager.quranDetailsRaute,arguments: suraItem);
      },

      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Text(suraItem.suraName,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleMedium)),
            Container(alignment: Alignment.center,
              width: 2,
             color:Theme.of(context).dividerColor
            ),
            Expanded(child: Text(suraItem.versesNumber,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleMedium)),
          ],
        ),
      ),
    );
  }
}
