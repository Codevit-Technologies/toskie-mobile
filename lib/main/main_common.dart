import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toskie_mobile/config/dependency_injection/injection_container.dart';
import 'package:toskie_mobile/config/flavor/env_flavor.dart';
import 'package:toskie_mobile/toskie_mobile.dart';

Future<void> mainCommon(Flavor flavor) async {
  AppConfig.flavor = flavor;

  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: 'env/.env.${AppConfig.flavorName}');

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await setupLocator();

  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => const ToskieMobile(),
    ),
  );
}
