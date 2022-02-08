import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  late bool mobile;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height >
        MediaQuery.of(context).size.width) {
      mobile = true;
    } else {
      mobile = false;
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                mobile ? MainAxisAlignment.center : MainAxisAlignment.end,
            children: [
              Column(
                children: const [
                  Text(
                    'Allan Drozd',
                    style: TextStyle(fontSize: 64.0),
                  ),
                  Text(
                    'Developer',
                    style: TextStyle(fontSize: 62.0),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment:
                mobile ? MainAxisAlignment.center : MainAxisAlignment.start,
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
            mainAxisAlignment:
                mobile ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: 'A selfmade enthusiast fullstack developer \n',
                      style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                          letterSpacing: 3.5),
                      children: const [
                    TextSpan(text: 'Armed with Flutter, Vue and Firebase \n'),
                    TextSpan(text: 'Welcome to my page'),
                  ])),
            ],
          ),
        ],
      ),
    );
  }
}
