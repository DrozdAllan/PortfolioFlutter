import 'package:flutter/material.dart';
import 'package:portfolio_flutter/utils/custom_icons_icons.dart';

class DesktopDrawer extends StatelessWidget {
  final PageController desktopPager;
  const DesktopDrawer({
    Key? key,
    required this.desktopPager,
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
                      color: Color.fromARGB(150, 255, 255, 255),
                    ),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    // TODO: cut the image to 90x90
                    Image.asset(
                      'PortfolioLogo.png',
                      width: 90.0,
                      height: 90.0,
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
                  desktopPager.animateTo(0,
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
                  desktopPager.animateTo(MediaQuery.of(context).size.height,
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
                  desktopPager.animateTo(MediaQuery.of(context).size.height * 2,
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
                  desktopPager.animateTo(MediaQuery.of(context).size.height * 3,
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
                  desktopPager.animateTo(MediaQuery.of(context).size.height * 4,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeIn);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/united-kingdom.png',
                    ),
                    iconSize: 40.0,
                    splashRadius: 30.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/france.png'),
                    iconSize: 40.0,
                    splashRadius: 30.0,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
