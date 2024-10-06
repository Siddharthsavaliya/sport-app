import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
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
  final String status;

  const EventDetailsPage(
      {super.key, required this.tournament, required this.status});

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
            indicatorWeight: 4.0, // Thicker indicator
            unselectedLabelColor: Colors.white70,
            tabs: const [
              Tab(text: 'Live'),
              Tab(text: 'Upcoming'),
              Tab(text: 'Past'),
            ],
          ),
        ),
        body: Column(
          children: [
            // Event details section with enhanced UI
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      color: AppColors.gray,
                    ),
                    child: Image.network(
                      tournament.logo ?? tournament.image,
                      fit: BoxFit.cover,
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
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "${formatDDMMYYYDate(tournament.startDate)} to ${formatDDMMYYYDate(tournament.endDate)}",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(Icons.sports_soccer,
                                size: 18, color: Colors.white70),
                            const SizedBox(width: 4),
                            Text(
                              tournament.sport,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
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

            // Tab bar view with match details
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
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
                      id: tournament.id,
                    ),
                    MatchListView(
                      selectedSport: tournament.sport,
                      matchStatus: 'Past',
                      id: tournament.id,
                    ),
                  ],
                ),
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
                            type: widget.matchStatus,
                            match: state.tournamentDetailModel!.matches[index]);
                      case 'Football':
                        return FootballScoreCard(
                            match: state.tournamentDetailModel!.matches[index],
                            matchStatus: widget.matchStatus);
                      case 'Hockey':
                        return HockeyScoreCard(
                            match: state.tournamentDetailModel!.matches[index],
                            matchStatus: widget.matchStatus);
                      case 'Horse Riding':
                        return HoursRidingCard(
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
                      case 'Table Tennis':
                        return TableTennisScoreCard(
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
  final String type;

  const CricketScoreCard({super.key, required this.match, required this.type});

  @override
  Widget build(BuildContext context) {
    final teamA = capitalizeFirstLetter(match.teams[0].name);
    final teamB = capitalizeFirstLetter(match.teams[1].name);
    final matchDate = DateFormat('dd MMM yyyy').format(match.date!);
    final matchTime = match.time; // Assuming time is available in match.time
    final isUpcoming = type.toLowerCase() == 'upcoming';

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
          borderRadius: BorderRadius.circular(10),
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
                        '$teamA vs $teamB',
                        textAlign: TextAlign.left,
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
              if (!isUpcoming && match.score.isNotEmpty) ...[
                const SizedBox(height: 12),

                // Display Team A Score
                Text(
                  '${getShortTeamName(teamA)}: ${match.score[0]["runs"]}/${match.score[0]["wickets"]} (${match.score[0]["overs"]} Ov)',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),

                // Display Team B Score
                Text(
                  '${getShortTeamName(teamB)}: ${match.score[1]["runs"]}/${match.score[1]["wickets"]} (${match.score[1]["overs"]} Ov)',
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
                      '${capitalizeFirstLetter(teamA)} vs ${capitalizeFirstLetter(teamB)}',
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
              if (isLive || matchStatus.toLowerCase() == "past") ...[
                Text(
                  '${capitalizeFirstLetter(teamA)}: ${match.score[0]["goals"]} goals',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${capitalizeFirstLetter(teamB)}: ${match.score[1]["goals"]} goals',
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
    final teamA = capitalizeFirstLetter(match.teams[0].name);
    final teamB = capitalizeFirstLetter(match.teams[1].name);
    final matchDate = DateFormat('dd MMM yyyy').format(match.date!);
    final matchTime = match.time;
    final isLive = matchStatus.toLowerCase() == "live";

    // Extracting set scores
    final setScores = match.score.map((set) {
      final teamAPoints = set["teams"][0]["point"];
      final teamBPoints = set["teams"][1]["point"];
      return '${capitalizeFirstLetter(set["set"]).substring(0, set["set"].length - 1)} ${capitalizeFirstLetter(set["set"]).substring(3)}: $teamA $teamAPoints - $teamB $teamBPoints';
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
              if (isLive || matchStatus.toLowerCase() == "past") ...[
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

class HockeyScoreCard extends StatelessWidget {
  final Match match; // Make sure to define your Match model accordingly.
  final String matchStatus;

  const HockeyScoreCard({
    super.key,
    required this.matchStatus,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    final teamA = capitalizeFirstLetter(match.teams[0].name);
    final teamB = capitalizeFirstLetter(match.teams[1].name);
    final matchTime = match.time?.trim(); // Trim to remove any extra spaces.
    final isLive = matchStatus.toLowerCase() == "live";

    // Extracting scores with error handling
    final teamAScore = match.score.firstWhere(
        (score) => score["team"].toLowerCase() == teamA.toLowerCase(),
        orElse: () => {"goals": 0} // Default score if not found
        )["goals"];

    final teamBScore = match.score.firstWhere(
        (score) => score["team"].toLowerCase() == teamB.toLowerCase(),
        orElse: () => {"goals": 0} // Default score if not found
        )["goals"];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayerListPage(
                id: match
                    .matchId!), // Assuming PlayerListPage takes a match ID.
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
                    'Match Date: ${formatDDMMYYYDate(match.date!)}',
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

              // Display Score
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        getShortTeamName(teamA),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        getShortTeamName(teamB),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 4), // Space between rows
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ':',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(width: 8), // Space between colon and score
                    ],
                  ),
                  const SizedBox(width: 4), // Space between rows
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '$teamAScore',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        '$teamBScore',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(width: 8), // Space between colon and score
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Toss Winner (if available)
              if (match.tossWinner != null)
                Text(
                  'Toss won by: ${capitalizeFirstLetter(match.tossWinner ?? "")}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              if (match.winner != null) ...[
                const SizedBox(height: 12),
                Text(
                  'Winner: ${capitalizeFirstLetter(match.winner ?? "")}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
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

class HoursRidingCard extends StatelessWidget {
  final Match match; // Assume Match is your model for riding data.
  final String matchStatus;

  const HoursRidingCard({
    super.key,
    required this.matchStatus,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    final teamA = capitalizeFirstLetter(match.teams[0].name); // Rider A
    final teamB = capitalizeFirstLetter(match.teams[1].name); // Rider B
    final matchTime = match.time?.trim(); // Trim to remove any extra spaces.
    final isLive = matchStatus.toLowerCase() == "live";

    // Extracting scores (riding hours) with error handling
    final teamARidingHours = match.score.firstWhere(
        (score) => score["team"].toLowerCase() == teamA.toLowerCase(),
        orElse: () => {"points": 0, "time": 0} // Default if not found
        )["points"];

    final teamBRidingHours = match.score.firstWhere(
        (score) => score["team"].toLowerCase() == teamB.toLowerCase(),
        orElse: () => {"points": 0, "time": 0} // Default if not found
        )["points"];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlayerListPage(
                id: match.matchId!), // Navigate to a details page.
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
              // Rider Names and Live Badge
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
                    'Riding Date: ${formatDDMMYYYDate(match.date!)}',
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

              // Display Riding Hours
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        getShortTeamName(teamA),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        getShortTeamName(teamB),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 4), // Space between rows
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ':',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(width: 8), // Space between colon and score
                    ],
                  ),
                  const SizedBox(width: 4), // Space between rows
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '$teamARidingHours',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        '$teamBRidingHours',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(width: 8), // Space between colon and score
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Toss Winner (if available)
              if (match.tossWinner != null)
                Text(
                  'Rider start: ${capitalizeFirstLetter(match.tossWinner ?? "")}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              if (match.winner != null) ...[
                const SizedBox(height: 12),
                Text(
                  'Winner: ${capitalizeFirstLetter(match.winner ?? "")}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class TableTennisScoreCard extends StatelessWidget {
  final Match match; // Match model for table tennis
  final String matchStatus;

  const TableTennisScoreCard({
    super.key,
    required this.matchStatus,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    final playerA = capitalizeFirstLetter(match.teams[0].name);
    final playerB = capitalizeFirstLetter(match.teams[1].name);
    final matchTime = match.time?.trim(); // Trim to remove any extra spaces.
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
              // Match Players and Live Badge
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '$playerA vs $playerB',
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
                    'Match Date: ${formatDDMMYYYDate(match.date!)}',
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

              // Display Scores for Each Set
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < match.score.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'Set ${i + 1}', // Display "Set 1", "Set 2", etc.
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            '${match.score[i]['teams'][0]['team']} : ${match.score[i]['teams'][0]['point']}',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            '${match.score[i]['teams'][1]['team']} : ${match.score[i]['teams'][1]['point']}',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),

              // Toss Winner and Final Winner (if available)
              if (match.tossWinner != null)
                Text(
                  'Toss won by: ${capitalizeFirstLetter(match.tossWinner ?? "")}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              if (match.winner != null) ...[
                const SizedBox(height: 12),
                Text(
                  'Winner: ${capitalizeFirstLetter(match.winner ?? "")}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
