
// import 'package:flutter/widgets.dart';

// import '../routes/app_routes.dart';
// import '../service/hive/hive_database.dart';
// import '../service/shared_pref/pref_keys.dart';
// import '../service/shared_pref/shared_pref.dart';

// class AppLogout {
//   factory AppLogout() {
//     return _instance;
//   }

//   AppLogout._();

//   static final AppLogout _instance = AppLogout._();

//   Future<void> logout() async {
//     final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
//     await SharedPref.removePreference(PrefKeys.accessToken);
//     await SharedPref.removePreference(PrefKeys.userId);
//     await SharedPref.removePreference(PrefKeys.userRole);
//     await HiveDatabase().clearAllBox();
//     if (!context.mounted) return;
//     await context.pushNamedAndRemoveUntil(AppRoutes.login);
//   }
// }
