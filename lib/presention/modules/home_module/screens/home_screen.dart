import 'package:flutter/material.dart';
import 'package:quran_flutter_app/core/asset_managers.dart';
import 'package:quran_flutter_app/core/colors_managers.dart';
import 'package:quran_flutter_app/presention/modules/home_module/tabs/Hadeeth_Tab/HadeethTab.dart';
import 'package:quran_flutter_app/presention/modules/home_module/tabs/ListOfTabs.dart';
import 'package:quran_flutter_app/presention/modules/home_module/tabs/Quran_Tab/QuranTab.dart';
import 'package:quran_flutter_app/presention/modules/home_module/tabs/Radio_Tab/RadioTab.dart';
import 'package:quran_flutter_app/presention/modules/home_module/tabs/Settings_Tab/SettingsTab.dart';
import 'package:quran_flutter_app/presention/modules/home_module/tabs/Tasbeeh_Tab/TasbeehTab.dart';
import '../../../../core/strings_managers.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> Tabs=[
    QuranTab(),
    HadeethTab(),
    SettingsTab(),
    RadioTab(),
    TasbeehTab(),
  ];

int selectedIndex= 0;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:const BoxDecoration(
       image: DecorationImage(image: AssetImage(AssetsManager.bgLight),
       fit: BoxFit.fill)
      ),
      child: Scaffold(
       appBar: AppBar(
          title:const Text(StringsManagers.appBarTitle),
       ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorManagers.GoldColor,
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedIndex,
          onTap: (index){
           selectedIndex = index;
           setState(() {

           });
           print(selectedIndex);
          },
          items: const [
            BottomNavigationBarItem( backgroundColor: ColorManagers.GoldColor,icon:ImageIcon(AssetImage(AssetsManager.Quraanl)),label:StringsManagers.QuraanLabel),
            BottomNavigationBarItem( backgroundColor: ColorManagers.GoldColor,icon:ImageIcon(AssetImage(AssetsManager.Hadeetl)),label:StringsManagers.HadeethLabel),
            BottomNavigationBarItem( backgroundColor: ColorManagers.GoldColor,icon:ImageIcon(AssetImage(AssetsManager.Sebhal)),label:StringsManagers.SebhaLebal),
            BottomNavigationBarItem( backgroundColor: ColorManagers.GoldColor,icon:ImageIcon(AssetImage(AssetsManager.Radiol)),label:StringsManagers.RadioLabel),
            BottomNavigationBarItem( backgroundColor: ColorManagers.GoldColor,icon:Icon(Icons.settings),label:StringsManagers.Settings),
          ],
        ),
        body:Tabs[selectedIndex],

      ),

    );
  }
}

