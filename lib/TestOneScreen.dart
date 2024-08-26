
import 'package:flutter/material.dart';
import 'package:ystore/core/common/dialogs/custom_dialogs.dart';
import 'package:ystore/core/extensions/context_extension.dart';
import 'package:ystore/core/language/lang_keys.dart';

import 'core/routes/app/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('One'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // context.pushName(AppRoutes.testTwo);
            Navigator.pushNamed(context, AppRoutes.testTwo);
          },
          child: Text(
            context.translate(LangKeys.email),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}