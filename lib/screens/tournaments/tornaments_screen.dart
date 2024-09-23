import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/tournament_bloc/tournament_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/model/tournament_model/tournament_model.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/tournaments/event_detail_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/empty_place_holder.dart';

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
        body: const TabBarView(
          children: [
            EventList(
              type: "past",
            ),
            EventList(
              type: "live",
            ),
            EventList(
              type: "upcoming",
            ),
          ],
        ),
      ),
    );
  }
}

class EventList extends StatefulWidget {
  final String type;
  const EventList({super.key, required this.type});

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  void initState() {
    BlocProvider.of<TournamentBloc>(context)
        .add(GetTournamentRequest(widget.type));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TournamentBloc, TournamentState>(
      builder: (context, state) {
        if (state.status.isLoaded || state.isMatch) {
          return ListView.builder(
            itemCount: state.tournamentList.length,
            itemBuilder: (context, index) {
              return EventCard(event: state.tournamentList[index]);
            },
          );
        }
        if (state.status.isInProgress) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }
        if (state.status.isFailed) {
          return const EmptyPlaceHolder(
              title: "Opps",
              subTitle: "Something wen wrong",
              imagePath: AppAssets.error);
        }
        return SizedBox.fromSize();
      },
    );
  }
}

class EventCard extends StatelessWidget {
  final Tournament event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => EventDetailsPage(
                tournament: event,
              ),
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
                  child: Image.network(
                    event.image,
                    fit: BoxFit.fill,
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
                    event.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 5),
                  Text(
                      'Date: ${formatDDMMYYYDate(event.startDate)} to ${formatDDMMYYYDate(event.endDate)}'),
                  const SizedBox(height: 5),
                  Text('Location: ${event.groundAddress.city}'),
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
