import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
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
        backgroundColor: Colors.grey.shade100,
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
        if (state.status.isLoaded || state.isMatch || state.isTeam) {
          return state.tournamentList.isEmpty
              ? Padding(
                  padding: EdgeInsets.only(bottom: 0.1.sh),
                  child: Lottie.asset(AppAssets.coming),
                )
              : ListView.builder(
                  itemCount: state.tournamentList.length,
                  itemBuilder: (context, index) {
                    return EventCard(
                      event: state.tournamentList[index],
                      status: widget.type,
                    );
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
  final String status;

  const EventCard({super.key, required this.event, required this.status});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (status.toLowerCase() != "upcoming") {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => EventDetailsPage(
                  status: status,
                  tournament: event,
                ),
              ));
        }
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 6,
        shadowColor: Colors.black38,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event Image with Gradient Overlay
            Stack(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  height: 180,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                  ),
                  child: Image.network(
                    event.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black54],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Event Details Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Event Name
                  Text(
                    event.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  // Event Dates
                  Text(
                    'Date: ${formatDDMMYYYDate(event.startDate)} - ${formatDDMMYYYDate(event.endDate)}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Address Header
                  const Text(
                    'Location:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Address Information
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (event.groundAddress.address1 != null)
                        Text(
                          event.groundAddress.address1 ?? "",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      const SizedBox(height: 4),
                      if (event.groundAddress.city != null &&
                          event.groundAddress.state != null)
                        Text(
                          '${event.groundAddress.city}, ${event.groundAddress.state}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      const SizedBox(height: 4),
                      if (event.groundAddress.pincode != null)
                        Text(
                          'Pincode: ${event.groundAddress.pincode}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      const SizedBox(height: 12),
                      // Google Maps Link
                      if (event.groundAddress.googleMapLink != null)
                        GestureDetector(
                          onTap: () {
                            // Add logic to open Google Maps link
                            print(
                                "Opening Google Maps Link: ${event.groundAddress.googleMapLink}");
                          },
                          child: const Row(
                            children: [
                              Icon(
                                Icons.location_city,
                                color: AppColors.primaryColor,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'View on Google Maps',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
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
