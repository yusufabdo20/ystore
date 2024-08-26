import 'package:flutter/material.dart';

import '../../../TestOneScreen.dart';
import '../../../TestTwoScreen.dart';
import '../../common/screens/page_under_build_screen.dart';
import '../base/base_routes.dart';

class AppRoutes {
  static const String testOne = 'testOne';
  static const String testTwo = 'testTwo';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(page: TestOneScreen());
      case testTwo:
        return BaseRoute(page: TestTwoScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
