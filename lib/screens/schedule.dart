import 'package:appointmentapp/constants/colorcode.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                'Schedule',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: TabBar(
                  indicatorColor: purple,
                  indicator: BoxDecoration(
                    color: ambercolor,
                  ),
                  tabs: [
                    Tab(
                      child: Text('check'),
                    ),
                    Tab(
                      child: Text('rock'),
                    ),
                    Tab(
                      child: Text('scissor'),
                    ),
                  ],
                ),
              ),
            ),
            // TabBarView(children: [
            //   Text('text'),
            // ])
          ],
        ),
      ),
    );
  }
}
