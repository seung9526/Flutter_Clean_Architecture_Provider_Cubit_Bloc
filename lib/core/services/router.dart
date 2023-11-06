
import 'package:education_app/core/common/views/page_under_construction.dart';
import 'package:education_app/src/on_boarding/presentation/on_boarding_screen.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name){
    case OnBoardingScreen.routeName:
/*      return _pageRouteBuilder(
              (_) => const OnBoardingScreen(),
          settings: settings
      );*/
    default:
      return _pageRouteBuilder(
              (_) => const PageUnderConstruction(),
          settings: settings);
  }
}

PageRouteBuilder<dynamic> _pageRouteBuilder( Widget Function(BuildContext) page, 
    {required RouteSettings settings,}) {
  return PageRouteBuilder(
    settings: settings,
      transitionsBuilder: (_, animation, __, child) =>
          FadeTransition(opacity: animation, child: child,),
      pageBuilder: (context, _, __,) => page(context),
  );
}