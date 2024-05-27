import 'package:adalato_app/utils/app_router.dart';
import 'package:adalato_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AdalatoGymApp());
}

class AdalatoGymApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adalato Gym App',
      initialRoute: AppRoutes.home,
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
