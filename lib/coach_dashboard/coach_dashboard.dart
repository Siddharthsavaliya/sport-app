import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:sport_app/bloc/user_bloc/user_bloc.dart';
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
    return ListView.builder(
      itemCount: 10, // Example item count
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://itsmycourt.s3.ap-south-1.amazonaws.com/IMG-20231209-WA0006.jpg"),
          ),
          title: Text("John"),
          subtitle: Text("919714696101"),
        );
      },
    );
  }
}

class ActiveBookedTab extends StatelessWidget {
  const ActiveBookedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Example item count
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://itsmycourt.s3.ap-south-1.amazonaws.com/IMG-20231209-WA0006.jpg"),
          ),
          title: Text("John"),
          subtitle: Text("919714696101"),
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
