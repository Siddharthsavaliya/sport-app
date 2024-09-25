import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:sport_app/bloc/tournament_bloc/tournament_bloc.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/model/tournament_model/tournament_model.dart';
import 'package:sport_app/model/tournament_detail_model/tournament_detail_model.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/tournaments/player_detail.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/empty_place_holder.dart';

class EventDetailsPage extends StatelessWidget {
  final Tournament tournament;
  const EventDetailsPage({super.key, required this.tournament});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
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
                  Container(
                    clipBehavior: Clip.hardEdge,
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.gray,
                    ),
                    child: Image.network(
                      tournament.image, // Event logo
                      fit: BoxFit.fill,
                    ),
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
                    selectedSport: tournament.sport,
                    matchStatus: 'Live',
                    id: tournament.id,
                  ),
                  MatchListView(
                      selectedSport: tournament.sport,
                      matchStatus: 'Upcoming',
                      id: tournament.id),
                  MatchListView(
                      selectedSport: tournament.sport,
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
    BlocProvider.of<TournamentBloc>(context)
        .add(GetMatchesRequest(widget.id, widget.matchStatus.toLowerCase()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const matchCount =
        3; // Replace this with actual logic to determine match count

    return BlocBuilder<TournamentBloc, TournamentState>(
      builder: (context, state) {
        if (state.status.isLoaded && state.isMatch || state.isTeam) {
          return state.tournamentDetailModel!.matches.isEmpty
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
                  itemCount: state.tournamentDetailModel!.matches
                      .length, // Example data count
                  itemBuilder: (context, index) {
                    // Add conditions for each sport type
                    switch (widget.selectedSport) {
                      case 'Cricket':
                        return CricketScoreCard(
                            match: state.tournamentDetailModel!.matches[index]);
                      case 'Football':
                        return FootballScoreCard(
                            match: state.tournamentDetailModel!.matches[index],
                            matchStatus: widget.matchStatus);
                      case 'Volley Ball':
                        return VolleyBallScoreCard(
                            match: state.tournamentDetailModel!.matches[index],
                            matchStatus: widget.matchStatus);
                      case 'Basketball':
                        return BasketballScoreCard(
                            match: state.tournamentDetailModel!.matches[index],
                            matchStatus: widget.matchStatus);
                      case 'Tennis':
                        return TennisScoreCard(
                            match: state.tournamentDetailModel!.matches[index],
                            matchStatus: widget.matchStatus);
                      case 'Badminton':
                        return BadmintonScoreCard(
                            match: state.tournamentDetailModel!.matches[index],
                            matchStatus: widget.matchStatus);
                      default:
                        return DefaultScoreCard(
                            match: state.tournamentDetailModel!.matches[index],
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
  final Match match;

  const CricketScoreCard({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    final teamA = match.teams[0].name;
    final teamB = match.teams[1].name;
    final matchDate = DateFormat('dd MMM yyyy').format(match.date!);
    final matchTime = match.time; // Assuming time is available in match.time
    final isUpcoming = match.calculatedStatus == "upcoming";

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayerListPage(
              id: match.matchId!,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Match Teams Row (with overflow handling)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (!isUpcoming) ...[
                    Expanded(
                      child: Text(
                        '$teamA vs $teamB',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1, // To ensure no overflow issues
                      ),
                    ),
                  ],
                  if (isUpcoming) ...[
                    Expanded(
                      child: Text(
                        '$teamA\nvs\n$teamB',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ]
                ],
              ),
              SizedBox(height: isUpcoming ? 12 : 8),

              // Match Date and Time (for upcoming matches)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Match Date: $matchDate',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  if (isUpcoming)
                    Text(
                      'Time: $matchTime',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                ],
              ),
              if (!isUpcoming) ...[
                const SizedBox(height: 12),

                // Display Team A Score
                Text(
                  '$teamA: ${match.score[0]["runs"]}/${match.score[0]["wickets"]} (${match.score[0]["overs"]} Ov)',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),

                // Display Team B Score
                Text(
                  '$teamB: ${match.score[1]["runs"]}/${match.score[1]["wickets"]} (${match.score[1]["overs"]} Ov)',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 12),

                // Display Toss Winner
                if (match.tossWinner != null)
                  Text(
                    'Toss won by: ${match.tossWinner}',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                if (match.winner != null) ...[
                  const SizedBox(height: 10),

                  // Ongoing Match Indicator
                  Text(
                    match.winner ?? "",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ]
              ]
            ],
          ),
        ),
      ),
    );
  }
}

// Football Score Card
class FootballScoreCard extends StatelessWidget {
  final Match match;
  final String matchStatus;
  const FootballScoreCard(
      {super.key, required this.match, required this.matchStatus});

  @override
  Widget build(BuildContext context) {
    final teamA = match.teams[0].name;
    final teamB = match.teams[1].name;
    final matchDate = DateFormat('dd MMM yyyy').format(match.date!);
    final matchTime = match.time;
    final isLive = matchStatus.toLowerCase() == "live";

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayerListPage(id: match.matchId!),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Match Teams
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '$teamA vs $teamB',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  if (isLive)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'LIVE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 8),

              // Match Date and Time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Match Date: $matchDate',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  if (isLive)
                    Text(
                      'Time: $matchTime',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),

              // Display Score
              if (isLive) ...[
                Text(
                  '$teamA: ${match.score[0]["goals"]} goals',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '$teamB: ${match.score[1]["goals"]} goals',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],

              if (match.tossWinner != null) ...[
                const SizedBox(height: 12),
                Text(
                  'Toss won by: ${match.tossWinner}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ],
              // Winner (if available)
              if (match.winner != null) ...[
                const SizedBox(height: 12),
                Text(
                  'Winner: ${match.winner}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

// VolleyBall Score Card
class VolleyBallScoreCard extends StatelessWidget {
  final Match match;
  final String matchStatus;

  const VolleyBallScoreCard({
    super.key,
    required this.matchStatus,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    final teamA = match.teams[0].name;
    final teamB = match.teams[1].name;
    final matchDate = DateFormat('dd MMM yyyy').format(match.date!);
    final matchTime = match.time;
    final isLive = matchStatus.toLowerCase() == "live";

    // Extracting set scores
    final setScores = match.score.map((set) {
      final teamAPoints = set["teams"][0]["point"];
      final teamBPoints = set["teams"][1]["point"];
      return '${set["set"]}: $teamA $teamAPoints - $teamB $teamBPoints';
    }).toList();

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayerListPage(id: match.matchId!),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Match Teams and Live Badge
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '$teamA vs $teamB',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  if (isLive)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'LIVE',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 8),

              // Match Date and Time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Match Date: $matchDate',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  if (!isLive)
                    Text(
                      'Time: $matchTime',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),

              // Display Set Scores
              if (isLive) ...[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: setScores.map((setScore) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        setScore,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],

              const SizedBox(height: 12),

              // Toss Winner (if available)
              if (match.tossWinner != null)
                Text(
                  'Toss won by: ${match.tossWinner}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              if (match.winner != null) ...[
                const SizedBox(height: 12),
                Text(
                  '${match.winner}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

// Basketball Score Card
class BasketballScoreCard extends StatelessWidget {
  final String matchStatus;
  final Match match;
  const BasketballScoreCard(
      {super.key, required this.matchStatus, required this.match});
  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      sportIcon: Icons.sports_basketball,
      score: '89 - 78',
      match: match,
    );
  }
}

// Tennis Score Card
class TennisScoreCard extends StatelessWidget {
  final String matchStatus;
  final Match match;
  const TennisScoreCard(
      {super.key, required this.matchStatus, required this.match});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      sportIcon: Icons.sports_tennis,
      score: '3 Sets - 2 Sets',
      match: match,
    );
  }
}

// Badminton Score Card
class BadmintonScoreCard extends StatelessWidget {
  final String matchStatus;
  final Match match;
  const BadmintonScoreCard(
      {super.key, required this.matchStatus, required this.match});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      sportIcon: Icons.branding_watermark,
      score: '2 Games - 1 Game',
      match: match,
    );
  }
}

// Default Score Card
class DefaultScoreCard extends StatelessWidget {
  final String matchStatus;
  final Match match;
  const DefaultScoreCard(
      {super.key, required this.matchStatus, required this.match});

  @override
  Widget build(BuildContext context) {
    return SportScoreCard(
      sportIcon: Icons.sports,
      score: 'Match Score',
      match: match,
    );
  }
}

// Common Widget for All Sports Score Cards
class SportScoreCard extends StatelessWidget {
  final IconData sportIcon;
  final String score;
  final Match match;
  const SportScoreCard({
    super.key,
    required this.sportIcon,
    required this.score,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // // Navigate to the PlayerListPage when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayerListPage(
              id: match.matchId!,
            ),
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
