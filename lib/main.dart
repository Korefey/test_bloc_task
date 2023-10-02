import 'package:flutter/material.dart';
import 'package:test_bloc_task/presentation/app.dart';
import 'package:test_bloc_task/config/bloc/providers.dart';

void main() {
  runApp(const BlocProviders(child: App()));
}
