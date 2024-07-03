import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/bloc/coach_bloc/coach_bloc.dart';
import 'package:sport_app/bloc/coach_bloc/coach_event.dart';
import 'package:sport_app/bloc/coach_bloc/coach_state.dart';
import 'package:sport_app/model/coach_model/coach_model.dart';
import 'package:sport_app/model/status.dart';
import 'package:sport_app/res/app_assets.dart';
import 'package:sport_app/res/app_colors.dart';
import 'package:sport_app/res/app_text_style.dart';
import 'package:sport_app/screens/coaches/coach_detail_screen.dart';
import 'package:sport_app/utils/helper.dart';
import 'package:sport_app/utils/status_dialog.dart';
import 'package:sport_app/widget/empty_place_holder.dart';
import 'package:sport_app/widget/shimmer_widget.dart';
import 'package:sport_app/widget/app_button.dart' as AppButton;

class CoachListScreen extends StatefulWidget {
  const CoachListScreen({super.key});

  @override
  State<CoachListScreen> createState() => _CoachListScreenState();
}

class _CoachListScreenState extends State<CoachListScreen> {
  late TextEditingController _searchController;

  List<Coach> _allCoaches = [];
  String? _selectedCity;
  String? _selectedSport;

  void _showCitySportFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // To allow custom height
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (context) {
        // List of cities and sports (example)
        List<String> cities = [
          'Gokalpur',
          'Surat',
          'Hyderabad',
          'Patna',
          'Gaya',
          'Muzaffarpur',
          'Darbhanga',
          'Munger'
        ];
        List<String> sports = [
          'Football',
          'Basketball',
          'Tennis',
          'Cricket',
          'Volleyball',
        ];

        // State variables
        String citySearchQuery = '';
        String sportSearchQuery = '';
        List<String> filteredCities = cities;
        List<String> filteredSports = sports;

        return StatefulBuilder(
          builder: (context, setState) {
            // Function to handle city search query changes
            void updateCitySearchQuery(String query) {
              setState(() {
                citySearchQuery = query;
                filteredCities = cities
                    .where((city) =>
                        city.toLowerCase().contains(query.toLowerCase()))
                    .toList();
              });
            }

            // Function to handle sport search query changes
            void updateSportSearchQuery(String query) {
              setState(() {
                sportSearchQuery = query;
                filteredSports = sports
                    .where((sport) =>
                        sport.toLowerCase().contains(query.toLowerCase()))
                    .toList();
              });
            }

            return Container(
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.0)),
                  color: AppColors.white),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    addVerticalSpacing(0.01),
                    Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Select Filters',
                      style: AppStyle.mediumText.copyWith(
                        fontSize: 18.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    // City Section
                    ExpansionTile(
                      title: Text(
                        'Cities',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      initiallyExpanded: false, // Start closed by default
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            onChanged: updateCitySearchQuery,
                            decoration: InputDecoration(
                              hintText: 'Search city',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              prefixIcon: const Icon(Icons.search),
                            ),
                          ),
                        ),
                        ...filteredCities.map((city) {
                          return CheckboxListTile(
                            title: Text(
                              city,
                              style: const TextStyle(color: AppColors.black),
                            ),
                            value: _selectedCity == city,
                            onChanged: (checked) {
                              setState(() {
                                _selectedCity = checked! ? city : null;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.trailing,
                            activeColor: AppColors.primaryColor,
                          );
                        }),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    // Sport Section
                    ExpansionTile(
                      title: Text(
                        'Sports',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      initiallyExpanded: false, // Start closed by default
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextField(
                            onChanged: updateSportSearchQuery,
                            decoration: InputDecoration(
                              hintText: 'Search sport',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              prefixIcon: const Icon(Icons.search),
                            ),
                          ),
                        ),
                        ...filteredSports.map((sport) {
                          return CheckboxListTile(
                            title: Text(
                              sport,
                              style: const TextStyle(color: AppColors.black),
                            ),
                            value: _selectedSport == sport,
                            onChanged: (checked) {
                              setState(() {
                                _selectedSport = checked! ? sport : null;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.trailing,
                            activeColor: AppColors.primaryColor,
                          );
                        }),
                      ],
                    ),
                    addVerticalSpacing(0.01),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: AppButton.AppButton(
                        removeOpacity: true,
                        radius: 0,
                        text: "Apply Filters",
                        onTap: () {
                          if (_selectedCity != null && _selectedSport != null) {
                            Navigator.pop(context); // Close bottom sheet
                          } else {
                            showScafoldMessage(
                              message: "Please select city and sport",
                              context: context,
                            );
                          }
                        },
                      ),
                    ),
                    addVerticalSpacing(0.025)
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    BlocProvider.of<CoachBloc>(context).add(GetCoachRequest());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> onRefresh() async {
    setState(() {
      _allCoaches =
          BlocProvider.of<CoachBloc>(context).state.coachsData.validate();
    });

    BlocProvider.of<CoachBloc>(context).add(GetCoachRequest());
    print("object : ${_allCoaches.length}");
  }

  void _filterGrounds(String query) {
    setState(() {
      _allCoaches = BlocProvider.of<CoachBloc>(context)
          .state
          .coachsData
          .validate()
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Our Expert Coaches",
          style: AppStyle.mediumText.copyWith(
              fontSize: 20.sp, color: AppColors.white, letterSpacing: 0.8),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: _showCitySportFilterBottomSheet,
          ),
        ],
      ),
      body: BlocConsumer<CoachBloc, CoachState>(
        listener: (context, state) {
          if (state.status.isLoaded) {
            _allCoaches = state.coachsData ?? [];
          }
        },
        builder: (context, state) {
          if (state.status.isLoaded || state.isBooking) {
            return _allCoaches.isEmpty
                ? const EmptyPlaceHolder(
                    pending: 0.1,
                    title: "No coach available as of now",
                    subTitle: "Coming soon...",
                    imagePath: AppAssets.error)
                : RefreshIndicator(
                    onRefresh: onRefresh,
                    color: AppColors.black,
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              DynamicHeightGridView(
                                physics: const NeverScrollableScrollPhysics(),
                                crossAxisCount: 2,
                                itemCount: _allCoaches.length,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 15,
                                shrinkWrap: true,
                                builder: (BuildContext context, int index) {
                                  Coach data = _allCoaches[index];
                                  print(data.sportsgrounds);

                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) =>
                                                CoachDetailScreen(
                                              coachId: data.id.validate(),
                                            ),
                                          ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(color: grey),
                                          // borderRadius: BorderRadius.circular(12),
                                          color: const Color.fromARGB(
                                              255, 245, 245, 245),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                height: 120,
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  12),
                                                          topRight:
                                                              Radius.circular(
                                                                  12)),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        AppAssets.coach),
                                                  ),
                                                  // image: DecorationImage(
                                                  //   fit: BoxFit.cover,
                                                  //   image: NetworkImage(
                                                  //       'https://s3-alpha-sig.figma.com/img/74e0/051a/982c92d4c5914b8cd1b01c34b3e2384a?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=K46rmD51p9YflN2cjJc9MfWQFF9ovLizg-9PLbuVPAJ8KeqQn0ZSzLXC6tAXt~U6C83GBDbrAyyqI2v8ePqJDTKn9xf3B0vPjDobXoEGuperF~KTciuUIg0XqAiP0PvpBViyn6gtYgIjiUIwbRXsZFeOc2GmoJcPOI~AwvbwL9Nu7dE33LP2IEv-O~YwncCFBZpNF-fHOoCl2lzxFJORAySe4bfC0skQzqq6jn-1eHc6W8i6ae1cctey9LH9FyPpQHjLNYHoKe1WbyNf1Dqt7G6o8B6YKvk8OdBQPcXf6GYjxpfvyFg6ZfFCto49ru1uoqcPX~-kjv86LjuWhlIVTg__'),
                                                  // ),
                                                ),
                                              ),
                                              // Align(
                                              //   alignment: Alignment.topRight,
                                              //   child: const Icon(
                                              //     Icons.bookmark,
                                              //     color: Colors.amber,
                                              //     size: 18,
                                              //   ).paddingAll(8),
                                              // )
                                            ],
                                          ),
                                          4.height,
                                          Row(
                                            children: [
                                              Text(
                                                "Name: ",
                                                style: TextStyle(
                                                    fontSize: 15.sp,
                                                    color: black),
                                              ),
                                              Flexible(
                                                child: Text(
                                                  "${data.firstname} ${data.lastname}",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: black),
                                                ),
                                              ),
                                            ],
                                          ).paddingSymmetric(
                                              horizontal: 10, vertical: 2),
                                          Row(
                                            children: [
                                              Text(
                                                "Skills: ",
                                                style:
                                                    TextStyle(fontSize: 15.sp),
                                              ),
                                              Flexible(
                                                child: Wrap(
                                                  alignment:
                                                      WrapAlignment.start,
                                                  children: _buildSkills(
                                                      data.sportsgrounds),
                                                ),
                                              )
                                            ],
                                          ).paddingSymmetric(
                                              horizontal: 10, vertical: 2),
                                          const Divider(
                                              color: grey, thickness: 1),
                                          Row(
                                            children: [
                                              Text(
                                                "Exp: ",
                                                style:
                                                    TextStyle(fontSize: 15.sp),
                                              ),
                                              Text(
                                                "${data.yearsOfExperience.validate() > 11 ? "10+ Years" : "${data.yearsOfExperience}"} Years",
                                                style:
                                                    TextStyle(fontSize: 15.sp),
                                              ).expand(),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: 16,
                                              ),
                                              Text(
                                                data.coachRating ?? "0",
                                                style:
                                                    TextStyle(fontSize: 15.sp),
                                              ),
                                            ],
                                          ).paddingSymmetric(
                                            horizontal: 10,
                                          ),
                                          addVerticalSpacing(0.01)
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              82.height
                            ],
                          ).paddingSymmetric(horizontal: 10, vertical: 16),
                        ),
                        // Positioned(
                        //   bottom: 1,
                        //   left: 0,
                        //   right: 0,
                        //   child: Container(
                        //     padding: EdgeInsets.all(16),
                        //     color: const Color.fromARGB(255, 245, 245, 245),
                        //     child: Container(
                        //       height: 54.sp,
                        //       decoration: BoxDecoration(
                        //         border: Border.all(color: gray),
                        //         borderRadius: BorderRadius.circular(20),
                        //         color: const Color.fromARGB(255, 245, 245, 245),
                        //       ),
                        //       child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //         children: [
                        //           Text(
                        //             "Sort by",
                        //             style: TextStyle(fontSize: 16.sp),
                        //           ),
                        //           Image.asset(
                        //             AppAssets.sort,
                        //           ).paddingAll(8),
                        //           Container(
                        //             height: 54.sp,
                        //             width: 1.sp,
                        //             color: grey,
                        //           ),
                        //           Text(
                        //             "Filter by sports",
                        //             style: TextStyle(fontSize: 16.sp),
                        //           ),
                        //           Icon(Icons.filter_alt_outlined),
                        //         ],
                        //       ).paddingSymmetric(horizontal: 10, vertical: 2),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  );
          }
          if (state.status.isInProgress) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 29,
                  childAspectRatio: 0.8,
                ),
                itemCount: 8,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return shimmerWidget(
                      child: Container(
                    height: 0.15.sh,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                  ));
                },
              ),
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

  List<Widget> _buildSkills(List<String> sportsgrounds) {
    List<Widget> skillsWidgets = [];
    print("----------${sportsgrounds.length}");
    for (int i = 0; i < sportsgrounds.length && i < 2; i++) {
      skillsWidgets.add(
        Text(
          sportsgrounds[i],
          style: TextStyle(fontSize: 15.sp),
        ),
      );
      if (i < 1 && sportsgrounds.length > 2) {
        skillsWidgets.add(
          Text(
            ", ",
            style: TextStyle(fontSize: 15.sp),
          ),
        );
      }
    }

    if (sportsgrounds.length > 2) {
      skillsWidgets.add(
        Text(
          " and more...",
          style: TextStyle(fontSize: 15.sp),
        ),
      );
    }

    return skillsWidgets;
  }
}
