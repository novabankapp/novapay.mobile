import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:nave_app/domain/entities/user.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:nave_app/infrastructure/routing/router.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';
import 'infrastructure/constants/constants.dart';
import 'infrastructure/di/injection.dart';
import 'infrastructure/routing/router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: appDocumentDirectory,
  );
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
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

                primarySwatch:  Colors.lightBlue,
                backgroundColor: ColorConstants.kSecondaryColor,
                scaffoldBackgroundColor: ColorConstants.kGrayColor,
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
              //routerConfig: _appRouter.config(),
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


