import 'package:flutter/material.dart';
import 'package:homework/app.dart';
import 'package:homework/service_locator.dart/service_locator.dart';

//Initialize once in the very beginning

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(
    App(),
  );
}
