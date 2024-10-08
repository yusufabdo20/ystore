import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ystore/core/app/connectivity_controller/connectivity_controller.dart';
import 'package:ystore/core/app/env/env_variables.dart';
import 'package:ystore/core/common/screens/no_network_screen.dart';
import 'package:ystore/core/language/app_localizations.dart';

import 'core/language/app_localizations_setup.dart';
import 'core/routes/app/app_routes.dart';

class YStoreApp extends StatelessWidget {
  const YStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        //(context, value, child)
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            builder: (context, child) {
              return MaterialApp(
                localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                locale: Locale('en'),
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                builder: (context, widget) {
                  return Scaffold(
                    body: Builder(builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    }),
                  );
                },
                debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
                // home: const Home(),
                onGenerateRoute: AppRoutes.onGenerateRoute,
                initialRoute: AppRoutes.testOne,
              );
            },
          );
        } else {
          return MaterialApp(
            title: 'No Network',
            debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
            home: const NoNetWorkScreen(),
          );
        }
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Y STORE"),
      ),
      body: Container(),
    );
  }
}
