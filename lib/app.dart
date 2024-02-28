import 'package:flutter/material.dart';
import 'app/widgets.dart';

class App extends StatefulWidget {
  const App({final Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    return CustomMaterialApp();
  }
}
