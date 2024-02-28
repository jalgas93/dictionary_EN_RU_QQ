import 'package:flutter/material.dart';
import 'package:jalgasssss/app.dart';

import 'helpers/app_colors.dart';
import 'modules/home/view/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      MaterialApp(
          theme: ThemeData(
            textTheme: TextTheme(
              headline6: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: AppColors.appBarTitle,
              ),
            ),
            useMaterial3: true,
            fontFamily: 'Commissioner',
            primarySwatch: Colors.blue,
            primaryColor: AppColors.primary,
            // accentColor: AppColors.accent,
            backgroundColor: AppColors.background,
            scaffoldBackgroundColor: AppColors.scaffoldBackground,
            errorColor: AppColors.errors,
            unselectedWidgetColor: AppColors.unselectedWidget,
          ),
          debugShowCheckedModeBanner: false, home: const HomePage()));
}
