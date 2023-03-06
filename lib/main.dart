import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'infrastructure/constants/constants.dart';
import 'infrastructure/di/injection.dart';
import 'infrastructure/routing/router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

//final _appRouter = locator<AppRouter>();

class MyApp extends StatelessWidget {

   MyApp({Key? key}) : super(key: key);

  final _appRouter = locator<AppRouter>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
      Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return MultiProvider (

        providers:  [

           Provider<AppRouter>(create: (_) => locator<AppRouter>()),
        ],
        child: ScreenUtilInit(

            builder: (context,widget)  => MaterialApp.router(
              title: Constants.TITLE,
              theme: ThemeData(

                primarySwatch: Colors.lightBlue,
                backgroundColor: Colors.black,
                scaffoldBackgroundColor: Colors.black,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              builder: (context, child) => Scaffold(
                // Global GestureDetector that will dismiss the keyboard
                body: GestureDetector(
                    onTap: () {
                      // When running in iOS, dismiss the keyboard when any Tap happens outside a TextField
                      if (Platform.isIOS) hideKeyboard(context);
                    },
                    child: child
                ),
              ),
              debugShowCheckedModeBanner: false,
              routeInformationParser: _appRouter.defaultRouteParser(),
              routerDelegate: _appRouter.delegate(),
            )

        )
    );

  }
  void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}


