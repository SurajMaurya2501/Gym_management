import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_management/widgets/common_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<IconData> icons = [
  //   Icons.event_available,
  //   Icons.fitness_center,
  //   Icons.fastfood
  // ];
  List<String> images = [
    'assets/attendance_new.png',
    'assets/workout.webp',
    'assets/diet_plan_new.jpg',
  ];

  List<String> title = ['Mark Attendance', 'Workout Plans', 'My Diet Plan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: Text(
          "Tiger Fitness💪🏼",
          style: GoogleFonts.alegreya(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 10.0,
            ),
            child: IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: Badge.count(
                count: 11,
                largeSize: 10.0,
                smallSize: 0.0,
                isLabelVisible: true,
                child: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
          margin: const EdgeInsets.all(
            10.0,
          ),
          // child: GridView.builder(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
          //     itemCount: 3,
          //     shrinkWrap: true,
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //           children: [
          //             Icon(
          //               icons[index],
          //               size: 60,
          //             ),
          //             Text(
          //               title[index],
          //               style: GoogleFonts.alice(fontSize: 15),
          //             )
          //           ],
          //         ),
          //       );
          //     }),
          child: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Positioned(
                        left: 90,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 7.0, bottom: 7.0),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 248, 80, 68),
                              borderRadius: BorderRadius.circular(
                                5,
                              )),
                          child: Text(
                            title[index],
                            style: GoogleFonts.allerta(
                              color: Colors.white,
                            ),
                          ),
                        )),
                    Positioned(
                      left: 0,
                      height: 100,
                      child: CircleAvatar(
                          radius: 50,
                          child: Image.asset(
                            images[index],
                            height: 70,
                            width: 70,
                          )),
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
