import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_form/provider/provider_page.dart';

import 'designs/screen1_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => Provider_class(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.green),
          home: const ScreenOne(),
        )),
  );
}
