import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:what_the_crush_app/src/features/Providers/crush_form_provider.dart';
import 'package:what_the_crush_app/src/features/Providers/datepicker.dart';
import 'package:what_the_crush_app/src/features/Providers/navbar_provider.dart';
import 'package:what_the_crush_app/src/features/SplashScreen/view/SplashScreen.dart';
import 'package:what_the_crush_app/src/helpers/CustomTextStyle.dart/Apptheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiProvider(
            providers: appProviders,
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'First Method',

                // You can use the library anywhere in the app even in theme

                theme: AppTheme(context).lightTheme,
                home: SplashScreen()),
          );
        });
  }
}

List<SingleChildWidget> appProviders = [
  ChangeNotifierProvider<DateOfBirthProvider>(
      create: (context) => DateOfBirthProvider()),
  ChangeNotifierProvider<Crushform>(create: (context) => Crushform()),
  ChangeNotifierProvider<BottomProviderController>(
      create: (context) => BottomProviderController())
];
