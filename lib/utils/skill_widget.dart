import 'package:flutter/material.dart';

class SkillWidget extends StatefulWidget {
  final String iconName;
  final String skillName;

  const SkillWidget({
    Key? key,
    required this.iconName,
    required this.skillName,
  }) : super(key: key);

  @override
  _SkillWidgetState createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          onHover: (isHovering) {
            if (isHovering) {
              setState(() {
                isHovered = true;
              });
            } else {
              setState(() {
                isHovered = false;
              });
            }
          },
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 250),
            opacity: isHovered ? 1.0 : 0.8,
            child: Image.asset(
              'assets/icons/' + widget.iconName + '.png',
              width: 50.0,
              height: 50.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: AnimatedOpacity(
              duration: const Duration(milliseconds: 250),
              opacity: isHovered ? 1.0 : 0.0,
              child: Text(
                widget.skillName,
                style: TextStyle(fontSize: 18),
              )),
        ),
      ],
    );
  }
}
