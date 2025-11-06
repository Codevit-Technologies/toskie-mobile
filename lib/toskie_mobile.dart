import 'package:flutter/material.dart';
import 'config/routing/route_config.dart';

class ToskieMobile extends StatelessWidget {
  const ToskieMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Toskie Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
