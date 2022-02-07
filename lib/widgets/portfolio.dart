import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // TODO: change length when you add the other projects
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List lanyaScreens = [
      'screenshots/lanya/Screenshot1.png',
      'screenshots/lanya/Screenshot2.png',
      'screenshots/lanya/Screenshot3.png',
      'screenshots/lanya/Screenshot4.png',
      'screenshots/lanya/Screenshot5.png',
      'screenshots/lanya/Screenshot6.png',
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'What I\'ve done',
                style: TextStyle(color: Colors.white, fontSize: 34.0),
              ),
            ],
          ),
          const SizedBox(
            // TODO: relative size
            height: 25.0,
          ),
          Container(
            color: Colors.blue,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'My Next Game'),
                Tab(text: 'Lanya'),
                // Tab(text: 'Mültitaskÿ'),
                // Tab(text: 'Fleeting'),
              ],
            ),
          ),
          // Faire une fade transition de chaque text de l'app
          Column(
            children: [
              Container(
                color: Colors.blue,
                // TODO: relative size
                // MANDATORY
                height: MediaQuery.of(context).size.height / 1.20,
                child: TabBarView(controller: _tabController, children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "My Next Game is an Android app where the user can get a videogame title and cover either by answering 4 questions or by complete randomization. It is made with Flutter and Firebase for the database. I went for a fun design with a cheerful tone for logo and colors. For a quick peek see Web Preview and for the Google Play Store see My Next Game",
                      ),
                      Image.asset(
                        'screenshots/mynextgame/AppPresentation.png',
                        // fit: BoxFit.contain,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Lanya is a website based on a typical e-shop layout, using Firebase and Stripe, combined with Vue 2 and Vuetify to make a Single Page Application. Link available soon",
                        ),
                        CarouselSlider(
                          // check params of the plugin
                          options: CarouselOptions(
                            // TODO: relative size
                            height: 550.0,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 5),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                          ),
                          items: lanyaScreens.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration:
                                      const BoxDecoration(color: Colors.amber),
                                  child: Image.asset(
                                    i,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
