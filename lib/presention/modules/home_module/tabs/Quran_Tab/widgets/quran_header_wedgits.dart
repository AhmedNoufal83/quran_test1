import 'package:flutter/material.dart';

import '../../../../../../core/colors_managers.dart';
import '../../../../../../core/strings_managers.dart';

class QuranHeaderWedgits extends StatelessWidget {
   QuranHeaderWedgits({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration:  BoxDecoration(border: Border.symmetric(
          horizontal: BorderSide(
              color:Theme.of(context).dividerColor,width: 2,
          )
      )),
      child: IntrinsicHeight(

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Expanded(
            flex:4,
            child: Text(
                textAlign:TextAlign.center,
                StringsManagers.chapterName,style: Theme.of(context).textTheme.headlineMedium
            )
          ),

            Container(child: Container(width:2,color:Theme.of(context).dividerColor)),
             Expanded(
              flex:4,
              child: Text(
                  textAlign:TextAlign.center,
                  StringsManagers.versusNumber,style:Theme.of(context).textTheme.headlineMedium
              ) ),
          ],
        ),
      ),
    );
  }
}
