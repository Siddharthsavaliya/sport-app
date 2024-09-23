import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/bloc/tournament_bloc/tournament_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/model/tournament_model/tournament_model.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/tournaments/player_detail.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/empty_place_holder.dart';

class EventDetailsPage extends StatelessWidget {
  final String selectedSport = 'Basketball'; // Example selected sport
  final Tournament tournament;
  const EventDetailsPage({super.key, required this.tournament});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Matches',
            style: AppStyle.mediumBold.copyWith(
              color: AppColors.white,
              fontSize: 16.sp,
              letterSpacing: 0.8,
            ),
          ),
          backgroundColor: AppColors.primaryColor,
          bottom: TabBar(
            labelStyle: AppStyle.mediumBold.copyWith(
              color: AppColors.white,
              fontSize: 15.sp,
              letterSpacing: 0.8,
            ),
            indicatorColor: Colors.white,
            tabs: const [
              Tab(text: 'Live'),
              Tab(text: 'Upcoming'),
              Tab(text: 'Past'),
            ],
          ),
        ),
        body: Column(
          children: [
            // Event details section
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.black,
              child: Row(
                children: [
                  Image.network(
                    tournament.image, // Event logo
                    height: 60,
                    width: 60,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tournament.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        addVerticalSpacing(0.005),
                        Text(
                          "${formatDDMMYYYDate(tournament.startDate)} to ${formatDDMMYYYDate(tournament.endDate)}",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Tab bar and view
            Expanded(
              child: TabBarView(
                children: [
                  MatchListView(
                    selectedSport: selectedSport,
                    matchStatus: 'Live',
                    id: tournament.id,
                  ),
                  MatchListView(
                      selectedSport: selectedSport,
                      matchStatus: 'Upcoming',
                      id: tournament.id),
                  MatchListView(
                      selectedSport: selectedSport,
                      matchStatus: 'Past',
                      id: tournament.id),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MatchListView extends StatefulWidget {
  final String selectedSport;
  final String matchStatus;
  final String id;
  const MatchListView(
      {super.key,
      required this.selectedSport,
      required this.matchStatus,
      required this.id});

  @override
  State<MatchListView> createState() => _MatchListViewState();
}

class _MatchListViewState extends State<MatchListView> {
  @override
  void initState() {
    BlocProvider.of<TournamentBloc>(context).add(GetMatchesRequest(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const matchCount =
        3; // Replace this with actual logic to determine match count

    return BlocBuilder<TournamentBloc, TournamentState>(
      builder: (context, state) {
        if (state.status.isLoaded) {
          return state.matchList.isEmpty
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.01.sw),
                  child: Column(
                    children: [
                      addVerticalSpacing(0.25),
                      const Icon(
                        Icons.event_note,
                        color: Colors.grey,
                        size: 60,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No ${widget.matchStatus} matches available for ${widget.selectedSport}',
                        textAlign: TextAlign.center,
                        style: AppStyle.mediumText.copyWith(
                          color: Colors.grey,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: matchCount, // Example data count
                  itemBuilder: (context, index) {
                    // Add conditions for each sport type
                    switch (widget.selectedSport) {
                      case 'Cricket':
                        return CricketScoreCard(
                            matchStatus: widget.matchStatus);
                      case 'Football':
                        return FootballScoreCard(
                            matchStatus: widget.matchStatus);
                      case 'Volley Ball':
                        return VolleyBallScoreCard(
                            matchStatus: widget.matchStatus);
                      case 'Basketball':
                        return BasketballScoreCard(
                            matchStatus: widget.matchStatus);
                      case 'Tennis':
                        return TennisScoreCard(matchStatus: widget.matchStatus);
                      case 'Badminton':
                        return BadmintonScoreCard(
                            matchStatus: widget.matchStatus);
                      default:
                        return DefaultScoreCard(
                            matchStatus: widget.matchStatus);
                    }
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

// Cricket Score Card
class CricketScoreCard extends StatelessWidget {
  final String matchStatus;

  const CricketScoreCard({super.key, required this.matchStatus});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      matchStatus: matchStatus,
      sportIcon: Icons.sports_cricket,
      score: '120/8 in 20 Overs',
    );
  }
}

// Football Score Card
class FootballScoreCard extends StatelessWidget {
  final String matchStatus;

  const FootballScoreCard({super.key, required this.matchStatus});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      matchStatus: matchStatus,
      sportIcon: Icons.sports_soccer,
      score: '2 - 1',
    );
  }
}

// VolleyBall Score Card
class VolleyBallScoreCard extends StatelessWidget {
  final String matchStatus;

  const VolleyBallScoreCard({super.key, required this.matchStatus});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      matchStatus: matchStatus,
      sportIcon: Icons.sports_volleyball,
      score: '3 Sets - 1 Set',
    );
  }
}

// Basketball Score Card
class BasketballScoreCard extends StatelessWidget {
  final String matchStatus;

  const BasketballScoreCard({super.key, required this.matchStatus});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      matchStatus: matchStatus,
      sportIcon: Icons.sports_basketball,
      score: '89 - 78',
    );
  }
}

// Tennis Score Card
class TennisScoreCard extends StatelessWidget {
  final String matchStatus;

  const TennisScoreCard({super.key, required this.matchStatus});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      matchStatus: matchStatus,
      sportIcon: Icons.sports_tennis,
      score: '3 Sets - 2 Sets',
    );
  }
}

// Badminton Score Card
class BadmintonScoreCard extends StatelessWidget {
  final String matchStatus;

  const BadmintonScoreCard({super.key, required this.matchStatus});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      matchStatus: matchStatus,
      sportIcon: Icons.branding_watermark,
      score: '2 Games - 1 Game',
    );
  }
}

// Default Score Card
class DefaultScoreCard extends StatelessWidget {
  final String matchStatus;

  const DefaultScoreCard({super.key, required this.matchStatus});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      matchStatus: matchStatus,
      sportIcon: Icons.sports,
      score: 'Match Score',
    );
  }
}

// Common Widget for All Sports Score Cards
class SportScoreCard extends StatelessWidget {
  final String matchStatus;
  final IconData sportIcon;
  final String score;

  const SportScoreCard({
    super.key,
    required this.matchStatus,
    required this.sportIcon,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the PlayerListPage when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayerListPage(matchStatus: matchStatus),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Team A vs Team B',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              const Text('Match Date: 25 Sep 2024'),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(sportIcon, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  Text(score),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
