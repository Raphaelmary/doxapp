import 'package:flutter/material.dart';

import '../constants/colorcode.dart';
import '../constants/doctors.dart';

class ListOfDoctors extends StatefulWidget {
  const ListOfDoctors({super.key});

  @override
  State<ListOfDoctors> createState() => _ListOfDoctorsState();
}

class _ListOfDoctorsState extends State<ListOfDoctors> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Wrap(
          runSpacing: 16,
          spacing: 16,
          children: [
            ...List.generate(
              doctor.length,
              (index) => GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  // print('object');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.24,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(3, 5),
                          color: Color.fromARGB(73, 158, 158, 158),
                        ),
                      ]),
                  child: Column(
                    children: [
                      // Text(
                      //   doctor[index].doctorId.toString(),
                      // ),
                      CircleAvatar(
                        backgroundImage: AssetImage(doctor[index].imgurl),
                        backgroundColor: Color(doctor[index].color),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        doctor[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        doctor[index].specialist,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: ambercolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        doctor[index].about,
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        doctor[index].location,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Price \$${doctor[index].price}',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
