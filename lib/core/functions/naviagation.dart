import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customNavigateRplace(BuildContext context, path) {
  GoRouter.of(context).pushReplacement(path);
}

void customNavigatePusch(BuildContext context, path) {
  GoRouter.of(context).pushReplacement(path);
}
