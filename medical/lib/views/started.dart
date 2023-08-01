import 'package:flutter/material.dart';
import 'package:medical/views/home.dart';

class Started extends StatelessWidget {
  const Started({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
              decoration: const BoxDecoration(color: Colors.white),
              child: Image.asset(
                "assets/images/start.jpg",
                // height: 50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              // height: 90,
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "All specialists in one app",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 78.0),
                      child: Text(
                        "Find your doctor and make an appointment with one tap",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: 400,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    )
                    // InkWell(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
