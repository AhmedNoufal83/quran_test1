import 'package:flutter/material.dart';

import '../HadeethTab.dart';

class HadithTitleWidgets extends StatelessWidget {
  Hadith hadith;
  HadithTitleWidgets({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 12),
      child: Text(hadith.title,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleMedium)
    );
  }
}
