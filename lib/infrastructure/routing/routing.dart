import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class Routing {
  static navigateTo(BuildContext context,String route){
    var router = AutoRouter.of(context);
    var params = context.routeData.queryParams;

    router.pushNamed(route);
  }
  static navigateToWithReplace(BuildContext context,String route){
    var router = AutoRouter.of(context);
    router.replaceNamed(route);
  }
}