import 'package:doc_doctor/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  setupLogger();

  runApp(const ProviderScope(child: DocDoctor()));
}
