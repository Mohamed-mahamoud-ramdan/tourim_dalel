import 'package:dalel/core/route/app_route.dart';

import 'package:flutter/material.dart';

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
