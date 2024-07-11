import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:sport_app/bloc/coach_bloc/coach_bloc.dart';
import 'package:sport_app/bloc/coach_bloc/coach_event.dart';
import 'package:sport_app/bloc/coach_bloc/coach_state.dart';
import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
import 'package:sport_app/model/coach_history_model/coach_history_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/widget/empty_place_holder.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    onRefresh();
    BlocProvider.of<CoachBloc>(context).add(GetCoachHistoryRequest());
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> onRefresh() async {
    BlocProvider.of<UserBloc>(context).add(GetUserEventRequest(isCoach: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.status.isLoaded) {
            return Scaffold(
              backgroundColor: Colors.grey.shade100,
              appBar: AppBar(
                backgroundColor: AppColors.primaryColor,
                title: Row(
                  children: [
                    const Center(
                      child: ClipOval(
                        child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(AppAssets.dp)),
                      ),
                    ),
                    addHorizontalSpacing(0.01),
                    Text(
                      'Hi ${state.userModel!.firstname} ${state.userModel!.lastname}',
                      style: AppStyle.mediumBold.copyWith(
                          color: AppColors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.8),
                    ),
                  ],
                ),
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  labelStyle: AppStyle.mediumBold,
                  controller: _tabController,
                  tabs: const [
                    Tab(text: 'Active Booking'),
                    Tab(text: 'Booking History'),
                  ],
                ),
              ),
              body: TabBarView(
                controller: _tabController,
                children: const [
                  BookedHistoryTab(),
                  ActiveBookedTab(),
                ],
              ),
              bottomNavigationBar: BottomAppBar(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: const EarningsSection(),
                ),
              ),
            );
          }
          if (state.status.isInProgress) {
            return Center(
              child: Lottie.asset('assets/animation/loading.json'),
            );
          }
          return EmptyPlaceHolder(
            title: "Oops",
            buttonText: "Try Again",
            onTap: () {
              onRefresh();
            },
            subTitle: "Something went wrong",
            imagePath: AppAssets.error,
          );
        },
      ),
    );
  }
}

class BookedHistoryTab extends StatelessWidget {
  const BookedHistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> onRefresh() async {
      BlocProvider.of<CoachBloc>(context).add(GetCoachHistoryRequest());
    }

    return BlocBuilder<CoachBloc, CoachState>(
      builder: (context, state) {
        if (state.status.isLoaded) {
          return Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ListView.builder(
              itemCount: state.coachHistoryList.length, // Example item count
              itemBuilder: (context, index) {
                CoachHistoryModel booking = state.coachHistoryList[index];
                return booking.bookingDateTime != "Valid"
                    ? SizedBox.fromSize()
                    : Card(
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      booking.userId.userName,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      booking.schoolId.institutionName,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    InfoRow(
                                      icon: Icons.phone,
                                      text: booking.userId.phoneNumber,
                                    ),
                                    InfoRow(
                                      icon: Icons.calendar_today,
                                      text:
                                          "Booking Date: ${DateFormat.yMMMd().format(booking.createdAt)}",
                                    ),
                                    // InfoRow(
                                    //   icon: Icons.access_time,
                                    //   text:
                                    //       "Time: ${booking.startTime} - ${booking.endTime}",
                                    // ),
                                    // InfoRow(
                                    //   icon: Icons.inventory,
                                    //   text:
                                    //       "Total Price: ₹${booking.totalPrice.toStringAsFixed(2)}",
                                    // ),
                                    // InfoRow(
                                    //   icon: Icons.receipt,
                                    //   text:
                                    //       "Transaction ID: ${booking.transactionId}",
                                    // ),
                                  ],
                                ),
                              ),
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    "https://itsmycourt.s3.ap-south-1.amazonaws.com/IMG-20231209-WA0006.jpg"), // Placeholder image
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
          );
        }
        if (state.status.isInProgress) {
          return Center(
            child: Lottie.asset('assets/animation/loading.json'),
          );
        }
        return EmptyPlaceHolder(
          title: "Oops",
          buttonText: "Try Again",
          onTap: () {
            onRefresh();
          },
          subTitle: "Something went wrong",
          imagePath: AppAssets.error,
        );
      },
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey[700]),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveBookedTab extends StatelessWidget {
  const ActiveBookedTab({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> onRefresh() async {
      BlocProvider.of<CoachBloc>(context).add(GetCoachHistoryRequest());
    }

    return BlocBuilder<CoachBloc, CoachState>(
      builder: (context, state) {
        if (state.status.isLoaded) {
          return Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ListView.builder(
              itemCount: state.coachHistoryList.length, // Example item count
              itemBuilder: (context, index) {
                CoachHistoryModel booking = state.coachHistoryList[index];
                return booking.bookingDateTime == "Valid"
                    ? SizedBox.fromSize()
                    : Card(
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      booking.userId.userName,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      booking.schoolId.institutionName,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    InfoRow(
                                      icon: Icons.phone,
                                      text: booking.userId.phoneNumber,
                                    ),
                                    InfoRow(
                                      icon: Icons.calendar_today,
                                      text:
                                          "Booking Date: ${DateFormat.yMMMd().format(booking.createdAt)}",
                                    ),
                                    // InfoRow(
                                    //   icon: Icons.access_time,
                                    //   text:
                                    //       "Time: ${booking.startTime} - ${booking.endTime}",
                                    // ),
                                    // InfoRow(
                                    //   icon: Icons.inventory,
                                    //   text:
                                    //       "Total Price: ₹${booking.totalPrice.toStringAsFixed(2)}",
                                    // ),
                                    // InfoRow(
                                    //   icon: Icons.receipt,
                                    //   text:
                                    //       "Transaction ID: ${booking.transactionId}",
                                    // ),
                                  ],
                                ),
                              ),
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    "https://itsmycourt.s3.ap-south-1.amazonaws.com/IMG-20231209-WA0006.jpg"), // Placeholder image
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
          );
        }
        if (state.status.isInProgress) {
          return Center(
            child: Lottie.asset('assets/animation/loading.json'),
          );
        }
        return EmptyPlaceHolder(
          title: "Oops",
          buttonText: "Try Again",
          onTap: () {
            onRefresh();
          },
          subTitle: "Something went wrong",
          imagePath: AppAssets.error,
        );
      },
    );
  }
}

class EarningsSection extends StatelessWidget {
  const EarningsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Earnings',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Earnings',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$1500',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(
                Icons.attach_money,
                color: Colors.white,
                size: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
