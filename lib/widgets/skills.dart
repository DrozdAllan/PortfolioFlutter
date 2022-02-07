import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio_flutter/utils/skill_widget.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'What I know',
                style: TextStyle(color: Colors.white, fontSize: 34.0),
              ),
            ],
          ),
          const SizedBox(
            height: 80.0,
          ),
          Row(
            children: const [
              Text('Programming'),
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
              Text('Design'),
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
