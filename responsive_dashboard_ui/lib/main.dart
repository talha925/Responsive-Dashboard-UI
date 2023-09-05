import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/responsive/desktop_scaffold.dart';
import 'package:responsive_dashboard_ui/responsive/mobile_scaffold.dart';
import 'package:responsive_dashboard_ui/responsive/responsive_layout.dart';
import 'package:responsive_dashboard_ui/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold(),
        ));
  }
}
