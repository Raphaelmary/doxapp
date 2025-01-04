import 'package:appointmentapp/constants/colorcode.dart';
import 'package:appointmentapp/widgets/list_of_doctors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:appointmentapp/constants/symptoms.dart';

// import '../constants/doctors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              const SizedBox(height: 20.0),
              appointment(),
              const SizedBox(height: 25.0),
              const Text(
                'What symptoms are your having?',
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    ...List.generate(
                      symptom.length,
                      (index) => Container(
                        padding: const EdgeInsets.only(right: 20.0),
                        decoration: const BoxDecoration(),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(6.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                symptom[index].imgurl,
                                width: 30.0,
                                height: 30.0,
                                // fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 10.0),
                              Text(
                                symptom[index].label,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.0,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'List of Avalaible Doctors',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 20),
              const ListOfDoctors(),
              // Text('this is the home data'),
            ],
          ),
        ),
      ),
    );
  }

//methods
  Row appointment() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: black,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 162, 162, 162),
                  blurRadius: 10.0,
                  spreadRadius: 3,
                  offset: Offset(5, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: const Icon(
                      Icons.add_circle,
                      size: 50.0,
                      color: ambercolor,
                    ),
                    onTap: () {
                      // print('doctor');
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Visit Hospital',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Get a Doctor\'s Appointment',
                        style: TextStyle(
                          color: ambercolor,
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 1.0,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 162, 162, 162),
                  blurRadius: 10.0,
                  spreadRadius: 3,
                  offset: Offset(5, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: const Icon(
                      Icons.home_repair_service,
                      size: 50.0,
                      color: black,
                    ),
                    onTap: () {
                      // print('doctor...');
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home Treatment',
                        style: TextStyle(
                          color: ambercolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Request Treatment at Home',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

//header method
  Row header() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'DoXAP',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: black,
              ),
            ),
            SizedBox(width: 10.0),
            Icon(
              Iconsax.activity,
              color: ambercolor,
              size: 30.0,
            ),
          ],
        ),
        CircleAvatar(
          backgroundColor: ambercolor,
          foregroundColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: FittedBox(
              child: Text(
                'USER',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
