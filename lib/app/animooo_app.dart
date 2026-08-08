import 'package:animal_app/core/routes/app_routes_manager.dart';
import 'package:flutter/material.dart';

class AnimoooApp extends StatelessWidget {
  const AnimoooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animooo App',
      onGenerateRoute: AppRoutesManager.onGenerateRoute,
      
    );
  }

}