// import 'package:flutter/material.dart';

class Doctors {
  final int doctorId;
  final String name, specialist, about, location, imgurl;
  int price;
  int color;
  // List<Review> reviews;

  Doctors({
    required this.doctorId,
    required this.name,
    required this.specialist,
    required this.about,
    required this.location,
    required this.imgurl,
    required this.price,
    required this.color,
    // required this.reviews,
  });
}

List<Doctors> doctor = [
  Doctors(
    doctorId: 1,
    name: 'Melisa Chang',
    specialist: 'Optometrist',
    about: about,
    location: '23 Springfield MA',
    imgurl: './images/doctor1.png',
    price: 88,
    color: 0xFFffcfdf,
    // reviews: [
    //   reviews[1],
    //   reviews[2],
    //   reviews[3],
    //   reviews[4],
    // ],
  ),
  Doctors(
    doctorId: 2,
    name: 'Charles Dunkins',
    specialist: 'Marrologist',
    about: about,
    location: 'Bronx, NY',
    imgurl: './images/doctor2.png',
    price: 111,
    color: 0xFFffcfff,
    // reviews: [
    //   reviews[1],
    //   reviews[2],
    //   reviews[3],
    //   reviews[4],
    // ],
  ),
  Doctors(
    doctorId: 3,
    name: 'Donald Musk',
    specialist: 'Haematologist',
    about: about,
    location: 'Bridgesville, TN',
    imgurl: './images/doctor3.png',
    price: 221,
    color: 0xFFeecfdf,
    // reviews: [
    //   reviews[1],
    //   reviews[2],
    //   reviews[3],
    //   reviews[4],
    // ],
  ),
  Doctors(
    doctorId: 4,
    name: 'Elon Shawn',
    specialist: 'Surgeon',
    about: about,
    location: '56 New Haven, NY',
    imgurl: './images/doctor4.png',
    price: 26,
    color: 0xFFfddfdf,
    // reviews: [
    //   reviews[1],
    //   reviews[2],
    //   reviews[3],
    //   reviews[4],
    // ],
  ),
  Doctors(
    doctorId: 5,
    name: 'Kennedy Mike',
    specialist: 'Ontologist',
    about: about,
    location: 'Mary Avenue, CL',
    imgurl: './images/doctor5.png',
    price: 91,
    color: 0xFFffcfee,
    // reviews: [
    //   reviews[1],
    //   reviews[2],
    //   reviews[3],
    //   reviews[4],
    // ],
  ),
  Doctors(
    doctorId: 6,
    name: 'Robert Kane',
    specialist: 'Gynaecologist',
    about: about,
    location: 'Ports Town, NJ',
    imgurl: './images/doctor6.png',
    price: 55,
    color: 0xFFddcfdf,
    // reviews: [
    //   reviews[1],
    //   reviews[2],
    //   reviews[3],
    //   reviews[4],
    // ],
  ),
];

String about = 'Specialist';

// rate(Doctors doctor) {
//   double rate = 0;
//   for (dynamic element in doctor.reviews) {
//     rate += element.rate;
//   }
//   return rate / doctor.reviews.length;
// }
