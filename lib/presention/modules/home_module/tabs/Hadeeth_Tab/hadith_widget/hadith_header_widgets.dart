import 'package:flutter/material.dart';

import '../../../../../../core/colors_managers.dart';
import '../../../../../../core/strings_managers.dart';

class HadithHeaderWidgets extends StatelessWidget {
  HadithHeaderWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 12),
      width: double.infinity,
        decoration: BoxDecoration(border: Border.symmetric(
            horizontal: BorderSide(
              color: Theme
                  .of(context)
                  .dividerColor, width: 2,
            )
        )),

        child: Text(
            textAlign: TextAlign.center,
            'El-HADITH', style: Theme
            .of(context)
            .textTheme
            .headlineMedium
        )
     );
  }}
