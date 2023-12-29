import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'HomePageCopyCopyWidget.dart';
import 'HomePageCopyModel.dart';

class ArtistIndicator extends ConsumerWidget {
  const ArtistIndicator({Key? key}) : super(key: key);
// artist 탭 바 아티스트 역할 부분
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureProvider = FutureProvider<List<InkWell>>((ref) {
      List<String> imagePaths = [
        'assets/images/Producer.png',
        'assets/images/Singer.png',
        'assets/images/MixingEngineer.png',
        'assets/images/SongWriter.png',
        'assets/images/masteringEngineer.png',
        'assets/images/SessionMusician.png',
      ];

      return imagePaths.map((path) {
        return InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => HomePageCopyCopyWidget(),
              ),
            );
          },
          child: Image.asset(
            path,
            width: 100,
            height: 50,
            fit: BoxFit.cover,
          ),
        );
      }).toList();
    });

    final PageController pageController = PageController(
      initialPage: 0,
    );

    final imageWidgets = ref.watch(futureProvider);

    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return GestureDetector(
      onPanUpdate: (details) {
        if (details.delta.dx > 0) {
          pageController.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.ease);
        } else if (details.delta.dx < 0) {
          pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.ease);
        }
      },
      child: Container(
        width: 451.2,
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.indigo,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 500,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                child: PageView.builder(
                  controller: pageController,
                  itemCount: imageWidgets.when(
                    data: (data) => data.length,
                    loading: () => 0,
                    error: (error, stackTrace) => 0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return imageWidgets.when(
                      data: (data) => data[index],
                      loading: () => const SizedBox(),
                      error: (error, stackTrace) => const SizedBox(),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: imageWidgets.when(
                      data: (data) => data.length,
                      loading: () => 0,
                      error: (error, stackTrace) => 0,
                    ),
                    axisDirection: Axis.horizontal,
                    onDotClicked: (index) {
                      pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    effect: const SlideEffect(
                      spacing: 8.0,
                      radius: 4.0,
                      dotWidth: 24.0,
                      dotHeight: 16.0,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.yellowAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
