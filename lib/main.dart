import 'package:calculator/app/view/my_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/controller/value_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ValueController>(
          create: (context) => ValueController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
