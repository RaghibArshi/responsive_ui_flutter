import 'package:flutter/material.dart';
import 'package:responsive_app/HomeScreen.dart';
import 'package:responsive_app/Responsive/desktopScaffold.dart';
import 'package:responsive_app/Responsive/mobileScaffold.dart';
import 'package:responsive_app/Responsive/risponsiveLayout.dart';
import 'package:responsive_app/Responsive/tabletScaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
