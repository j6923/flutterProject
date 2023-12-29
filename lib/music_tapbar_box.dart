import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// music 탭 바 윗 부분
class MusicTapbarBox extends StatefulWidget {
  const MusicTapbarBox({Key? key}) : super(key: key);

  @override
  State<MusicTapbarBox> createState() => _MusicTapbarBoxState();
}

class _MusicTapbarBoxState extends State<MusicTapbarBox> {
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: 110,
            enableInfiniteScroll: false,
            viewportFraction: 2,
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
          ),
          items: [
            Container(
              padding: const EdgeInsets.all(0.01),
              width: 448,//screenWidth * 0.35, // 수정된 부분
              height: 110,
              color: Colors.lightBlue,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('인기 음악가 순위'),
                  Divider(
                    thickness: 1,
                  ),
                  // 볼륜 스튜디오
                ],
              ),
            ),
            Container(
              width: 448,//screenWidth * 0.35, // 수정된 부분
              height: 110,
              color: Colors.teal,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('급격 상승 순위'),
                  Divider(
                    thickness: 1,
                  ),
                  //Image.asset('assets/images/Producer.png'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
