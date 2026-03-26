import 'package:flutter/material.dart';
import 'package:visitor_app/screen/admin/admin_dashboard.dart';
import 'package:visitor_app/screen/admin/reports.dart';
import 'package:visitor_app/screen/guard/new_visitor.dart';
import 'package:visitor_app/screen/guard/visit_entry.dart';
import 'package:visitor_app/screen/login.dart';
import 'package:visitor_app/screen/splash_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: VisitEntry());
  }
}