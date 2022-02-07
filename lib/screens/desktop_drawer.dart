import 'package:flutter/material.dart';
import 'package:portfolio_flutter/utils/custom_icons_icons.dart';

class DesktopDrawer extends StatelessWidget {
  final PageController pager;
  const DesktopDrawer({
    Key? key,
    required this.pager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 0.5,
                            color: Color.fromARGB(150, 255, 255, 255)))),
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  children: [
                    // TODO: cut the image to 90x90
                    Image.asset(
                      'PortfolioLogo.png',
                    ),
                    const Text(
                      'Allan Drozd',
                      style: TextStyle(fontSize: 28.0),
                    ),
                    const Text(
                      'Developer',
                      style: TextStyle(fontSize: 24.0),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          width: 250,
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(
                  CustomIcons.street_view,
                  size: 18.0,
                ),
                title: const Text('About Me'),
                onTap: () {
                  pager.animateTo(0,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeIn);
                },
              ),
              ListTile(
                leading: const Icon(
                  CustomIcons.cogs,
                  size: 18.0,
                ),
                title: const Text('Services'),
                onTap: () {
                  pager.animateTo(MediaQuery.of(context).size.height,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeIn);
                },
              ),
              ListTile(
                leading: const Icon(
                  CustomIcons.microchip,
                  size: 18.0,
                ),
                title: const Text('Skills'),
                onTap: () {
                  pager.animateTo(MediaQuery.of(context).size.height * 2,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeIn);
                },
              ),
              ListTile(
                leading: const Icon(
                  CustomIcons.seedling,
                  size: 18.0,
                ),
                title: const Text('Portfolio'),
                onTap: () {
                  pager.animateTo(MediaQuery.of(context).size.height * 3,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeIn);
                },
              ),
              ListTile(
                leading: const Icon(
                  CustomIcons.comment,
                  size: 18.0,
                ),
                title: const Text('Contact'),
                onTap: () {
                  pager.animateTo(MediaQuery.of(context).size.height * 4,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeIn);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
