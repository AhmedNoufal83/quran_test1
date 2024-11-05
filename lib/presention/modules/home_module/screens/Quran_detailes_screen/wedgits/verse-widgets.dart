
import 'package:flutter/material.dart';

class VerseWidgets extends StatelessWidget {
  String verse;
   VerseWidgets({super.key,required this.verse});

  @override
  Widget build(BuildContext context) {
    return  Card(

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 4.0),
        child: Text(verse,textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.bodyMedium,),
      ),
    );
  }
}
