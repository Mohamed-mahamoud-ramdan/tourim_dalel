import 'package:dalel/core/dataBases/cache_helper.dart';
import 'package:dalel/core/route/app_route.dart';
import 'package:dalel/core/services/services_loactor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Global instance of SharedPreferences
late SharedPreferences sharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await FirebaseAuth.instance.signInAnonymously();

  setupserviceLocator();
  getIt<CacheHelper>().init();

  sharedPreferences = await SharedPreferences.getInstance();

  runApp(Dalel());
}

class Dalel extends StatelessWidget {
  Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
