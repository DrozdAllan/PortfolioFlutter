import 'dart:async';
import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_flutter/screens/desktop_drawer.dart';

import 'package:portfolio_flutter/utils/custom_icons_icons.dart';
import 'package:portfolio_flutter/widgets/about.dart';
import 'package:portfolio_flutter/widgets/contact.dart';
import 'package:portfolio_flutter/widgets/portfolio.dart';
import 'package:portfolio_flutter/widgets/services.dart';
import 'package:portfolio_flutter/widgets/skills.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  _DesktopLayoutState createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  final sink = StreamController<double>();
  final desktopPager = PageController();

  @override
  void initState() {
    super.initState();
    throttle(sink.stream).listen((offset) {
      desktopPager.animateTo(
        offset,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    sink.close();
    desktopPager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF507c54),
      body: Row(children: [
        DesktopDrawer(desktopPager: desktopPager),
        Expanded(
          flex: 5,
          child: Listener(
            onPointerSignal: _handlePointerSignal,
            child: _IgnorePointerSignal(
              child: SingleChildScrollView(
                controller: desktopPager,
                child: Container(
                  //   width: 2000,
                  //   height: 4000,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'images/annie-spratt-KDVo3qepq3I-unsplash-min.jpg'),
                        fit: BoxFit.cover),
                  ),
                  //  @@@@@@@@@@@@@@@@@@@@@@@@ COLUMN FOR ALL THE VIEW
                  child: Column(
                    children: const [
                      About(),
                      Services(),
                      Skills(),
                      Portfolio(),
                      Contact(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Stream<double> throttle(Stream<double> src) async* {
    double offset = desktopPager.position.pixels;
    DateTime dt = DateTime.now();
    await for (var delta in src) {
      if (DateTime.now().difference(dt) > const Duration(milliseconds: 200)) {
        offset = desktopPager.position.pixels;
      }
      dt = DateTime.now();
      offset += delta;
      yield offset;
    }
  }

  void _handlePointerSignal(PointerSignalEvent e) {
    if (e is PointerScrollEvent && e.scrollDelta.dy != 0) {
      sink.add(e.scrollDelta.dy);
    }
  }
}

// workaround https://github.com/flutter/flutter/issues/35723
class _IgnorePointerSignal extends SingleChildRenderObjectWidget {
  const _IgnorePointerSignal({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  RenderObject createRenderObject(_) => _IgnorePointerSignalRenderObject();
}

class _IgnorePointerSignalRenderObject extends RenderProxyBox {
  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    final res = super.hitTest(result, position: position);
    result.path.forEach((item) {
      final target = item.target;
      if (target is RenderPointerListener) {
        target.onPointerSignal = null;
      }
    });
    return res;
  }
}
