import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customNavigate(BuildContext context, path) {
  GoRouter.of(context).pushReplacement(path);
}
