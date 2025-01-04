import 'package:appointmentapp/constants/colorcode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/doctors.dart';

class DoctorDetails extends StatefulWidget {
  // final Doctors doctor;
  const DoctorDetails({
    super.key,
    // required this.doctor,
  });

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ambercolor,
      extendBody: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: white,
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: white,
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(doctor[0].imgurl),
                      radius: 40,
                      backgroundColor: white,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Dr. ${doctor[0].name}',
                      style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      doctor[0].specialist,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          CupertinoIcons.phone_circle,
                          color: white,
                          size: 40,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          CupertinoIcons.chat_bubble_text,
                          size: 40,
                          color: white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Doctor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Dr. ${doctor[0].name} is a specialist in his field having recorded serveral successful operations.',
                          textAlign: TextAlign.justify,
                          maxLines: 2,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Reviews',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                const SizedBox(width: 8),
                                Icon(
                                  CupertinoIcons.star_circle_fill,
                                  color: ambercolor,
                                ),
                              ],
                            ),
                            Text(
                              'See all',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ambercolor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                doctor.length,
                                (index) => Container(
                                  width: 300,
                                  height: 200,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: purple,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(doctor[index].name),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: white),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: purple,
          ),
          child: Text(
            'Book Appointment',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
