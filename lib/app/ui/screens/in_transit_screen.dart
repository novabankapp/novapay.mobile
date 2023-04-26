import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/infrastructure/helpers/shared_preferences_helper.dart';
import 'package:nave_app/infrastructure/routing/router.gr.dart';

@RoutePage()
class InTransitScreen extends StatelessWidget {

  const InTransitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _sharedPreferenceHelper = context.select((SharedPreferenceHelper prefs) => prefs);


    return FutureBuilder(
      future: Future.wait([
        _sharedPreferenceHelper.name,
        _sharedPreferenceHelper.isLoggedIn,
        _sharedPreferenceHelper.isRegistered,

      ]),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
          var name = snapshot.data?[0];
          var isLoggedIn = snapshot.data?[1];
          var isRegistered = snapshot.data?[2];

          PageRouteInfo<dynamic>  toRoute = const LandingRoute();



          if(name == ""){
             toRoute = const LandingRoute();// .welcomeYourNamePage;
          }else{
             if(isLoggedIn){
                 //go to home
               AutoRouter.of(context).replaceAll([const HomeRoute()]);
             }
             else{
                 if(isRegistered){
                    toRoute = const LoginRoute();
                 }
                 else{

                   //toRoute = RouteGenerator.welcomeChooseInsurancePage;


                 }
             }
          }

          SchedulerBinding.instance?.addPostFrameCallback((_) {
               context.replaceRoute(toRoute);

          });


          return Container();
        }
        else {
          return const CircularProgressIndicator();
        }
      },

    );
  }
}
