import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/provider/mobile_scroll_provider.dart';

import 'package:portfolio_flutter/screens/mobile_drawer.dart';
import 'package:portfolio_flutter/widgets/about.dart';
import 'package:portfolio_flutter/widgets/contact.dart';
import 'package:portfolio_flutter/widgets/portfolio.dart';
import 'package:portfolio_flutter/widgets/services.dart';
import 'package:portfolio_flutter/widgets/skills.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  final PageController mobilePager = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MobileDrawer(),
      body: MobileBody(
        mobilePager: mobilePager,
      ),
    );
  }
}

class MobileBody extends ConsumerWidget {
  final PageController mobilePager;
  const MobileBody({
    Key? key,
    required this.mobilePager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<int>(mobileScrollProvider, (previous, next) {
      if (next != previous) {
        mobilePager.animateTo(MediaQuery.of(context).size.height * next,
            duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
      } else {
        mobilePager.animateTo(MediaQuery.of(context).size.height * previous!,
            duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
      }
    });
    return Stack(
      children: [
        SingleChildScrollView(
          controller: mobilePager,
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
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () => Scaffold.of(context).openDrawer(),
              child: const Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
