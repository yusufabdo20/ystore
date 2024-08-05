import 'package:flutter/material.dart';
import 'package:ystore/core/style/images/app_images.dart';

class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.noNetwork),
              fit: BoxFit.fill,
             ),
          ),
        ),
      ),
    );
  }
}
