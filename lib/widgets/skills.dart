import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio_flutter/utils/skill_widget.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  late bool mobile;

  bool flutterIconState = false;
  bool firebaseIconState = false;
  bool vueIconState = false;
  bool symfonyIconState = false;
  bool apiPlatformState = false;
  bool figmaState = false;
  bool gimpState = false;
  bool riveState = false;
  bool photoshopState = false;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height >
        MediaQuery.of(context).size.width) {
      mobile = true;
    } else {
      mobile = false;
    }

    return Container(
      padding: EdgeInsets.all(mobile ? 0.0 : 24.0),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                mobile ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Text(
                'What I know',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          const SizedBox(
            height: 80.0,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Programming'),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              // TODO: reduce icons size to 50*50px
              SkillWidget(iconName: 'flutter_128', skillName: 'Flutter'),
              SkillWidget(iconName: 'firebase_144', skillName: 'Firebase'),
              SkillWidget(iconName: 'vue_128px', skillName: 'Vue'),
              SkillWidget(iconName: 'symfony_white', skillName: 'Symfony'),
              SkillWidget(
                  iconName: 'apiPlatform_300', skillName: 'ApiPlatform'),
            ],
          ),
          const SizedBox(
            height: 80.0,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('Design'),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SkillWidget(iconName: 'figma_128', skillName: 'Figma'),
              SkillWidget(iconName: 'gimp_128', skillName: 'Gimp'),
              SkillWidget(iconName: 'rive_92', skillName: 'Rive'),
              SkillWidget(iconName: 'photoshop_128', skillName: 'Photoshop'),
            ],
          ),
        ],
      ),
    );
  }
}
