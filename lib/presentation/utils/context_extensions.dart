import 'package:flutter/material.dart';

extension ContextExtensionss on BuildContext {
  /// similar to [Theme.of(this).textTheme]
  TextTheme get textTheme => Theme.of(this).textTheme;
}
