import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sport_app/utils/helper.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({
    super.key,
  });

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final PageController _controller = PageController(initialPage: 0);
  CarouselController? carouselController;
  int _index = 0;

  List data = [
    "https://img.freepik.com/free-photo/runway-stadium_1417-1665.jpg?w=1060&t=st=1712118000~exp=1712118600~hmac=e724a4e4b665706d4229bc480fa1cf1885ab70bf851eb2d79fbbd92f9719de15",
    "https://img.freepik.com/premium-photo/grass_9083-12235.jpg?w=1380",
    "https://img.freepik.com/free-photo/sports-center_1127-4160.jpg?w=996&t=st=1712118060~exp=1712118660~hmac=076d81aaa36b390842e44885d03706af3c72971e2f47087ebb3c67d87b82ec0d"
  ];
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
      items: data.map((i) {
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
                      color: Colors.transparent,
                    ),
                    child: loadNetworkImage(url: i)),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
