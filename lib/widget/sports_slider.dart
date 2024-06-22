import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sport_app/model/sport/fetch_sport_model.dart';
import 'package:sport_app/utils/helper.dart';

class SportsSliderComponent extends StatefulWidget {
  const SportsSliderComponent({
    super.key,
  });

  @override
  State<SportsSliderComponent> createState() => _SportsSliderComponentState();
}

class _SportsSliderComponentState extends State<SportsSliderComponent> {
  final PageController _controller = PageController(initialPage: 0);
  CarouselController? carouselController;
  int _index = 0;
  List<FetchSportResponse> sportList = [];

  List data = [
    "https://img.freepik.com/free-photo/runway-stadium_1417-1665.jpg?w=1060&t=st=1712118000~exp=1712118600~hmac=e724a4e4b665706d4229bc480fa1cf1885ab70bf851eb2d79fbbd92f9719de15",
    "https://img.freepik.com/premium-photo/grass_9083-12235.jpg?w=1380",
    "https://img.freepik.com/free-photo/sports-center_1127-4160.jpg?w=996&t=st=1712118060~exp=1712118660~hmac=076d81aaa36b390842e44885d03706af3c72971e2f47087ebb3c67d87b82ec0d"
  ];

  @override
  void initState() {
    super.initState();
    getSportSlot();
  }

  Future<void> getSportSlot() async {
    var dio = Dio();
    try {
      var response = await dio.get(
        'https://cg8gkks.srv-01.purezzatechnologies.com/api/sport/getll',
      );

      if (response.statusCode == 200) {
        List<dynamic> responseData = response.data;
        sportList = responseData
            .map((json) => FetchSportResponse.fromJson(json))
            .toList();
        setState(() {});
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: carouselController,
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          setState(() {
            _index = index;
          });
        },
        height: 140,
        animateToClosest: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlay: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        enlargeCenterPage: true,
        initialPage: 0,
        enableInfiniteScroll: true,
        pageSnapping: true,
        viewportFraction: 1,
      ),
      items: sportList.map((sportData) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.029.sw),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(),
                      color: Colors.transparent,
                    ),
                    child:
                        loadNetworkImage(url: sportData.imageUrl.validate())),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
