import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jalgasssss/app/routing/routes.dart';
import 'package:jalgasssss/app_local.dart';
import 'package:jalgasssss/modules/dashboard/bloc/local_event.dart';
import 'package:jalgasssss/modules/dashboard/bloc/local_event.dart';
import 'package:jalgasssss/modules/dashboard/bloc/local_state.dart';
import 'package:provider/provider.dart';
import '../generated/l10n.dart';
import '../helpers/app_colors.dart';
import '../helpers/shared_preference_key.dart';
import '../modules/dashboard/bloc/local_bloc.dart';
import '../modules/dashboard/bloc/local_event.dart';
import '../modules/dashboard/bloc/local_event.dart';
import '../modules/dashboard/bloc/local_event.dart';
import '../modules/dashboard/bloc/local_event.dart';
import 'global/application.dart';

class CustomMaterialApp extends StatefulWidget {
  const CustomMaterialApp({Key? key}) : super(key: key);

  @override
  State<CustomMaterialApp> createState() => _CustomMaterialAppState();
}

class _CustomMaterialAppState extends State<CustomMaterialApp>
    with WidgetsBindingObserver {
  final appBlocLocal = LocalBloc();
  bool _initialized = true;

  @override
  void initState() {
    super.initState();
    appBlocLocal.add(LocalLanguage(local_lang: Locale('en', '')));
    WidgetsBinding.instance.addObserver(this);
    Application.onAppLanguageChanged = _appLanguageChanged;
    startApplication().then((_) {
      setState(() {
        _initialized = true;
      });
    });
  }

  Future<void> startApplication() async {
    await Application.setupSharedPreferences();
    await Application.setLanguageFromSharedPrefs();
  }

  @override
  void dispose() {

    appBlocLocal.close();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void _appLanguageChanged(String? language) async {
    Application.language = language ?? 'en';
    await Application.sharedPreferences
        ?.setString(SharedPreferencesKeys.appLanguage, language ?? 'en');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var currentLanguage = Application.language ?? 'en';
    // if (!_initialized) {
    //   return Container();
    // }
    return BlocProvider(
      create: (BuildContext context) => appBlocLocal,
      child: BlocBuilder<LocalBloc, LocalState>(
        builder: (BuildContext context, dynamic state) {
          if (state is SuccessLocal) {
            print('_______________ Success');
            return MaterialApp.router(
              routerConfig: router,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                Locale("en", ""),
                Locale("uz", ""),
                Locale("ru", ""),
                Locale("qq", ""),
                Locale("kz", ""),
              ],
              locale: state.locale,
              title: 'Part_time_job',
              theme: ThemeData(
                textTheme: TextTheme(
                  headline6: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.appBarTitle,
                  ),
                ),
                useMaterial3: true,
                primaryColor: AppColors.primary,
                // accentColor: AppColors.accent,
                backgroundColor: AppColors.background,
                scaffoldBackgroundColor: AppColors.scaffoldBackground,
                appBarTheme: const AppBarTheme(
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                    statusBarBrightness: Brightness.dark,
                    statusBarIconBrightness: Brightness.dark,
                  ),
                  // backwardsCompatibility: false,
                  elevation: 0.0,
                  color: AppColors.appBar,
                  iconTheme: IconThemeData(
                    color: AppColors.appBarIcons,
                    opacity: 1.0,
                  ),

                  // ),
                ),
                errorColor: AppColors.errors,
                unselectedWidgetColor: AppColors.unselectedWidget,
              ),
              localeResolutionCallback: (currentLocal, supportedLocales) {
                for (var locale in supportedLocales) {
                  if (currentLocal != null &&
                      currentLocal.languageCode == locale.languageCode) {
                    return currentLocal;
                  }
                }
                return supportedLocales.first;
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
