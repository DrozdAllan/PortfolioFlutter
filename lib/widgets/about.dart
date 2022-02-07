import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: const [
                  Text(
                    'Allan Drozd',
                    style: TextStyle(color: Colors.white, fontSize: 64.0),
                  ),
                  Text(
                    'Developer',
                    style: TextStyle(color: Colors.white, fontSize: 62.0),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Row(
            children: [
              Text(
                'Who I am',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Row(
            children: const [
              Text(
                'A selfmade enthusiast fullstack developer',
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                'Armed with Flutter, Vue and Firebase',
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                'Welcome to my page',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
