import 'package:flutter/material.dart';

import '../../style/images/app_images.dart';

class NoNetWorkScreen extends StatelessWidget {
  const NoNetWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.noNetwork),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
