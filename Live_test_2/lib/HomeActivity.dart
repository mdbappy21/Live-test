import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: .7 * screenSize.width,
                        width: .7 * screenSize.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://fifpro.org/media/fhmfhvkx/messi-world-cup.jpg?rxy=0.48356841796117644,0.31512414378031967&width=1600&height=1024&rnd=133210253587130000"),
                            )),
                      ),
                    ),
                    Text(
                      "Lionel Messi",
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      "lionelmessi@gmali.com",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        child: Text(
                            textAlign: TextAlign.center,
                            "Lionel Messi, often regarded as one of the greatest footballers of all time, is a Argentine professional footballer. Born on June 24, 1987, Messi has spent the majority of his career at FC Barcelona, where he mesmerized the world with his extraordinary talent, vision, and goal-scoring ability. Known for his exceptional dribbling skills, precise passing, and remarkable goal-scoring record, Messi has won numerous accolades, including multiple FIFA Ballon d'Or awards. His influence transcends the sport, making him an icon admired by millions worldwide for his humility, dedication, and unrivaled brilliance on the pitch.",style: TextStyle(fontSize: 16),),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: .7 * screenSize.height,
                        width: .7 * screenSize.height,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://fifpro.org/media/fhmfhvkx/messi-world-cup.jpg?rxy=0.48356841796117644,0.31512414378031967&width=1600&height=1024&rnd=133210253587130000"),
                            )),
                      ),
                    ),
                    Text(
                      "Lionel Messi",
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      "lionelmessi@gmali.com",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),
                      child: Container(
                        child: Text(
                            textAlign: TextAlign.center,
                            "Lionel Messi, often regarded as one of the greatest footballers of all time, is a Argentine professional footballer. Born on June 24, 1987, Messi has spent the majority of his career at FC Barcelona, where he mesmerized the world with his extraordinary talent, vision, and goal-scoring ability. Known for his exceptional dribbling skills, precise passing, and remarkable goal-scoring record, Messi has won numerous accolades, including multiple FIFA Ballon d'Or awards. His influence transcends the sport, making him an icon admired by millions worldwide for his humility, dedication, and unrivaled brilliance on the pitch.",style: TextStyle(fontSize: 16),),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
