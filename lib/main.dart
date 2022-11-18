import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  // if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
  //   await DesktopWindow.setMinWindowSize(
  //     const Size(
  //       350.0,
  //       650.0,
  //     ),
  //   );
  // }

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
        primarySwatch: Colors.blue,
      ),
      home: ScreenTypeLayout(
        mobile: Scaffold(
          body: Center(
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.blue.withOpacity(0.2),
              child: const Center(child: Text('Hello Mobile')),
            ),
          ),
        ),
        desktop: Scaffold(
          body: Center(
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.blue.withOpacity(0.2),
              child: const Center(child: Text('Hello Desktop')),
            ),
          ),
        ),
        breakpoints: const ScreenBreakpoints(
          desktop: 600.0,
          tablet: 300.0,
          watch: 150.0,
        ),
      ),
    );
  }
}


