import 'package:dalel/core/route/app_route.dart';
import 'package:dalel/core/utilies/app_assest.dart';
import 'package:dalel/core/utilies/app_colors.dart';
import 'package:dalel/features/splach/presentation/views/slpash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main(List<String> args) {
  runApp(Dalel());
}

class Dalel extends StatelessWidget {
  Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false, routerConfig: router);
  }
}
