import 'package:flutter/material.dart';
import 'package:medical/utils/doctors_list.dart';
import 'package:medical/utils/hospital_activities.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(iconSize: 22, items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.house_outlined, color: Colors.black54),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined, color: Colors.black54),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none, color: Colors.black54),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined, color: Colors.black54),
            label: ''),
      ]),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const SizedBox(height: 10),

            // User name
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Sergeo Moffo",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/images/doctor1.png"),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            // How do you fill card
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 200, 228),
                  borderRadius: BorderRadius.circular(15.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/surgeon.png",
                    width: 90,
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        width: 120,
                        child: Text(
                          "Fill out your medical right now",
                          style: TextStyle(color: Colors.black87, fontSize: 13),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        child: Container(
                          width: 150,
                          height: 35,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Main column seperator
            const SizedBox(height: 20),

            // Search bar par
            Container(
              padding: const EdgeInsets.only(left: 15.0),
              height: 65,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(95, 179, 173, 173),
                  borderRadius: BorderRadius.circular(15.0)),
              // width: 10,
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "How can we help you?",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),

            // Main column seperator
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  HospitalActivities(
                    icon: "assets/images/clean.png",
                    imageName: "Dentist",
                  ),
                  HospitalActivities(
                    icon: "assets/images/knife.png",
                    imageName: "Surgeon",
                  ),
                  HospitalActivities(
                    icon: "assets/images/lungs.png",
                    imageName: "Therapy",
                  ),
                  HospitalActivities(
                    icon: "assets/images/hormones.png",
                    imageName: "Physiologist",
                  ),
                ],
              ),
            ),

            // Main column seperator
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Doctor list",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.black45, fontSize: 15),
                ),
              ],
            ),

            // Main seperator
            const SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoctorList(
                    image: "assets/images/doctor1.png",
                    name: "Lonla Joel",
                    post: "Therapist",
                    experience: 4,
                  ),
                  DoctorList(
                    image: "assets/images/doctor2.png",
                    name: "Tiomela Lyze",
                    post: "Odontologist",
                    experience: 4,
                  ),
                  DoctorList(
                    image: "assets/images/doctor3.png",
                    name: "Brownson",
                    post: "Surgeon",
                    experience: 4,
                  ),
                  DoctorList(
                    image: "assets/images/doctor4.png",
                    name: "Zok Guy",
                    post: "Ophtamologist",
                    experience: 4,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
