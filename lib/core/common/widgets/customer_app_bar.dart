
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ystore/core/common/widgets/custom_linear_button.dart';
// import 'package:ystore/core/common/widgets/text_app.dart';
// import 'package:ystore/core/extensions/context_extension.dart';

// import '../../style/fonts/font_weight_helper.dart';
// import '../../style/images/app_images.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     required this.title,
//     super.key,
//   });

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       backgroundColor: context.color.mainColor,
//       elevation: 0,
//       centerTitle: true,
//       surfaceTintColor: Colors.transparent,
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           CustomLinearButton(
//             onPressed: () {
//               context.pop();
//             },
//             child: Center(
//               child: Icon(Icons.arrow_back),
//             ),
//           ),
//           Flexible(
//             child: TextApp(
//               text: title,
//               theme: context.textStyle.copyWith(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeightHelper.bold,
//                 color: context.color.textColor,
//               ),
//               // textOverflow: TextOverflow.ellipsis,
//             ),
//           ),
//           const Text(''),
//         ],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => Size(double.infinity, 70.h);
// }
