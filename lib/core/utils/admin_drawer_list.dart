// // List<DrawerItemModel>


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ystore/core/extensions/context_extension.dart';

// import '../common/widgets/text_app.dart';
// import '../style/fonts/font_family_helper.dart';
// import '../style/fonts/font_weight_helper.dart';

// List<DrawerItemModel> adminDrawerList(BuildContext context) {
//   return <DrawerItemModel>[
//     //DashBoard
//     DrawerItemModel(
//       icon: const Icon(
//         Icons.dashboard,
//         color: Colors.white,
//       ),
//       title: TextApp(
//         text: 'DashBoard',
//         theme: context.textStyle.copyWith(
//           color: Colors.white,
//           fontSize: 17.sp,
//           fontFamily: FontFamilyHelper.poppinsEnglish,
//           fontWeight: FontWeightHelper.bold,
//         ),
//       ),
//       page: const DashBoardScreen(),
//     ),
//     //Categories
//     DrawerItemModel(
//       icon: const Icon(Icons.category_outlined, color: Colors.white),
//       title: TextApp(
//         text: 'Categories',
//         theme: context.textStyle.copyWith(
//           color: Colors.white,
//           fontSize: 17.sp,
//           fontFamily: FontFamilyHelper.poppinsEnglish,
//           fontWeight: FontWeightHelper.bold,
//         ),
//       ),
//       page: const AddCategoriesScreen(),
//     ),
//     //Product
//     DrawerItemModel(
//       icon: const Icon(
//         Icons.production_quantity_limits,
//         color: Colors.white,
//       ),
//       title: TextApp(
//         text: 'Products',
//         theme: context.textStyle.copyWith(
//           color: Colors.white,
//           fontSize: 17.sp,
//           fontFamily: FontFamilyHelper.poppinsEnglish,
//           fontWeight: FontWeightHelper.bold,
//         ),
//       ),
//       page: const AddProductsScreen(),
//     ),
//     //Users
//     DrawerItemModel(
//       icon: const Icon(
//         Icons.people_alt_rounded,
//         color: Colors.white,
//       ),
//       title: TextApp(
//         text: 'Users',
//         theme: context.textStyle.copyWith(
//           color: Colors.white,
//           fontSize: 17.sp,
//           fontFamily: FontFamilyHelper.poppinsEnglish,
//           fontWeight: FontWeightHelper.bold,
//         ),
//       ),
//       page: const UsersScreen(),
//     ),
//     //Notifications
//     DrawerItemModel(
//       icon: const Icon(
//         Icons.notifications_active,
//         color: Colors.white,
//       ),
//       title: TextApp(
//         text: 'Notifications',
//         theme: context.textStyle.copyWith(
//           color: Colors.white,
//           fontSize: 17.sp,
//           fontFamily: FontFamilyHelper.poppinsEnglish,
//           fontWeight: FontWeightHelper.bold,
//         ),
//       ),
//       page: const AddNotificationsScreen(),
//     ),
//     //LogOut
//     DrawerItemModel(
//       icon: const Icon(
//         Icons.exit_to_app,
//         color: Colors.white,
//       ),
//       title: GestureDetector(
//         onTap: () {
//           CustomDialog.twoButtonDialog(
//             context: context,
//             textBody: 'Do you want log out?',
//             textButton1: 'Yes',
//             textButton2: 'No',
//             isLoading: false,
//             onPressed: () async {
//               await AppLogout().logout();
//             },
//           );
//         },
//         child: const Text(
//           'Logout',
//           style: TextStyle(
//             color: Colors.white,
//             fontFamily: 'Poppins',
//             fontWeight: FontWeightHelper.bold,
//             fontSize: 17,
//           ),
//         ),
//       ),
//       page: const UsersScreen(),
//     ),
//   ];
// }

// class DrawerItemModel {
//   DrawerItemModel({
//     required this.icon,
//     required this.title,
//     required this.page,
//   });

//   final Icon icon;
//   final Widget title;
//   final Widget page;
// }
