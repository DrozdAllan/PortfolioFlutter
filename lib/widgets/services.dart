import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final List<bool> _isOpen = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'What I can do for you',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: ExpansionPanelList(
                    animationDuration: const Duration(milliseconds: 1250),
                    dividerColor: Colors.blue[50],
                    elevation: 1,
                    expandedHeaderPadding: const EdgeInsets.all(0.0),
                    children: [
                      ExpansionPanel(
                          canTapOnHeader: true,
                          backgroundColor: Colors.blue,
                          headerBuilder: (context, isExpanded) => const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text('Mobile Development')),
                          body: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'I took an interest in Flutter mid-2021, since then I\'m focused on Mobile Development. For now I use it to develop Android applications only.'),
                          ),
                          isExpanded: _isOpen[0]),
                      ExpansionPanel(
                          canTapOnHeader: true,
                          backgroundColor: Colors.blue,
                          headerBuilder: (context, isExpanded) => const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text('Web Development')),
                          body: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'I am focused on small to medium sized projects, depending on your needs and time. I am able to start a project from scratch or renewing your configuration on some technologies.'),
                          ),
                          isExpanded: _isOpen[1]),
                      ExpansionPanel(
                          canTapOnHeader: true,
                          backgroundColor: Colors.blue,
                          headerBuilder: (context, isExpanded) => const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text('Deployment')),
                          body: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'I mainly work with Firebase and Heroku to provide the best cloud solutions but I also have experimented webhosting with FTP use.'),
                          ),
                          isExpanded: _isOpen[2]),
                      ExpansionPanel(
                          canTapOnHeader: true,
                          backgroundColor: Colors.blue,
                          headerBuilder: (context, isExpanded) => const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text('Design')),
                          body: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                                'Inspired by UI/UX design trends, I prototype my projects with Figma. I try my best to implement latest trend design to provide the best appealing products.'),
                          ),
                          isExpanded: _isOpen[3]),
                    ],
                    expansionCallback: (i, isOpen) {
                      setState(
                        () {
                          _isOpen.setAll(0, [false, false, false, false]);
                          _isOpen[i] = !isOpen;
                        },
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
