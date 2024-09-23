import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/tournaments/event_detail_screen.dart';

class TournamentScreen extends StatelessWidget {
  const TournamentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: Text(
            'Tournaments',
            style: AppStyle.mediumBold.copyWith(
                color: AppColors.white, fontSize: 20.sp, letterSpacing: 0.8),
          ),
          bottom: TabBar(
            labelStyle: AppStyle.mediumBold.copyWith(
              color: AppColors.white,
              fontSize: 15.sp,
              letterSpacing: 0.8,
            ),
            indicatorColor: Colors.white,
            tabs: const [
              Tab(text: 'Past'),
              Tab(text: 'Live'),
              Tab(text: 'Upcoming'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            EventList(events: pastEvents),
            EventList(events: liveEvents),
            EventList(events: upcomingEvents),
          ],
        ),
      ),
    );
  }
}

class EventList extends StatelessWidget {
  final List<Event> events;

  const EventList({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        return EventCard(event: events[index]);
      },
    );
  }
}

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const EventDetailsPage(),
            ));
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Replace with your event image or other background
                Container(
                  clipBehavior: Clip.hardEdge,
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(5))),
                  child: Image.asset(
                    'assets/images/ground.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    color: Colors.black.withOpacity(0.7),
                    child: Text(
                      event.status,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 5),
                  Text('Date: ${event.dateRange}'),
                  const SizedBox(height: 5),
                  Text('Location: ${event.location}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Sample event data
class Event {
  final String title;
  final String dateRange;
  final String location;
  final String status; // Past, Live, Upcoming

  Event(
      {required this.title,
      required this.dateRange,
      required this.location,
      required this.status});
}

List<Event> pastEvents = [
  Event(
      title: 'Molidi Vitthalpur Mini Tournament',
      dateRange: '28 May, 2024 to 29 May, 2024',
      location: 'Surat',
      status: 'Past'),
  // Add more past events here
];

List<Event> liveEvents = [
  Event(
      title: 'MPL 2024',
      dateRange: '23 Apr, 2024 to 24 Apr, 2024',
      location: 'Surat',
      status: 'Live'),
  // Add more live events here
];

List<Event> upcomingEvents = [
  Event(
      title: 'Molidi Vitthalpur Practice Tournament',
      dateRange: '11 Apr, 2024 to 12 Apr, 2024',
      location: 'Surat',
      status: 'Upcoming'),
  // Add more upcoming events here
];
