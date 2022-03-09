import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_flutter/provider/mobile_scroll_provider.dart';
import 'package:portfolio_flutter/utils/custom_icons_icons.dart';

class MobileDrawer extends ConsumerStatefulWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  _MobileDrawerState createState() => _MobileDrawerState();
}

class _MobileDrawerState extends ConsumerState<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(mobileScrollProvider.notifier);

    return Drawer(
      backgroundColor: const Color(0xFF507c54),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: const Color(0xFF507c54),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/PortfolioLogo.png',
                  width: 90.0,
                ),
                const Text('Allan Drozd'),
                const Text('Developer'),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              CustomIcons.street_view,
              size: 18.0,
            ),
            title: const Text('About Me'),
            onTap: () {
              notifier.changeOffset(0);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(
              CustomIcons.cogs,
              size: 18.0,
            ),
            title: const Text('Services'),
            onTap: () {
              notifier.changeOffset(1);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(
              CustomIcons.microchip,
              size: 18.0,
            ),
            title: const Text('Skills'),
            onTap: () {
              notifier.changeOffset(2);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(
              CustomIcons.seedling,
              size: 18.0,
            ),
            title: const Text('Portfolio'),
            onTap: () {
              notifier.changeOffset(3);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(
              CustomIcons.comment,
              size: 18.0,
            ),
            title: const Text('Contact'),
            onTap: () {
              notifier.changeOffset(4);
              Navigator.of(context).pop();
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
    );
  }
}
