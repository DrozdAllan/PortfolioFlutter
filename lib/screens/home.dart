import 'package:flutter/material.dart';
import 'package:portfolio_flutter/breakpoints.dart';
import 'package:portfolio_flutter/screens/desktop_layout.dart';
import 'package:portfolio_flutter/screens/mobile_layout.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= kTabletBreakpoint) {
          return const MobileLayout();
        } else {
          return const DesktopLayout();
        }
      },
    );
  }
}
