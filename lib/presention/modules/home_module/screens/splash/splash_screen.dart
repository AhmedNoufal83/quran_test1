import 'package:flutter/material.dart';
import 'package:quran_flutter_app/core/asset_managers.dart';
 
import '../../../../../core/routes_managers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),
            (){ Navigator.pushReplacementNamed(context, RoutesManager.HomeRoute);});
    //  Navigator.pushReplacementNamed(context, RoutesManager.HomeRoute);

    return Scaffold(
     body: Image.asset(AssetsManager.splashfull,height: double.infinity,fit: BoxFit.fill,width: double.infinity,),
   );

  }
}
