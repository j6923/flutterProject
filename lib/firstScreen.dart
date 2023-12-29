import 'package:d_flat/artistSecondPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePageCopyCopyWidget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'AppBarSplit.dart';
import 'music_tapbar.dart';
import 'artistTab_second.dart';
import 'main.dart';
// music tapbar 나눔
class FirstScreen extends ConsumerStatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<FirstScreen> createState() => _FirstScreen();
}
// 탭하고
late HomePageCopyModel _model;
String? greeting;
List<String>? instructions;

MusicTapbar musicTapbar = MusicTapbar(); // 탭 바 나눔
//Artist_indicator artist_indicator = Artist_indicator();

final scaffoldKey = GlobalKey<ScaffoldState>();
final _unfocusNode = FocusNode();
final controller = PageController(viewportFraction: 0.8, keepPage: true);
final List items = [
  'assets/images/m1.png',
  'assets/images/m2.png',
  'assets/images/m3.png',
  'assets/images/m4.png',
  'assets/images/m5.png',
  'assets/images/m6.png',
  'assets/images/m7.png',
  'assets/images/m8.png',
  'assets/images/m9.png',
  'assets/images/m10.png',
  'assets/images/m11.png',
  'assets/images/m12.png',
  'assets/images/m13.png',
  'assets/images/m14.png',
  'assets/images/m15.png',
  'assets/images/m16.png',
  'assets/images/m17.png',
  'assets/images/m18.png',
  'assets/images/m19.png',
  'assets/images/m20.png',
];

final PageController pageController1 = PageController(
  initialPage: 0,
);

class _FirstScreen extends ConsumerState<FirstScreen> {
  int _currentTab = 0;

  @override
  void initState() {
    super.initState();
  }

  List<String> imagePaths = [
    'assets/images/Producer.png',
    'assets/images/Singer.png',
    'assets/images/MixingEngineer.png',
    'assets/images/SongWriter.png',
    'assets/images/masteringEngineer.png',
    'assets/images/SessionMusician.png',
  ];

  @override
  Widget build(BuildContext context) {
    List<InkWell> imageWidgets = imagePaths.map((path) {
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

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBarSplit(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Align(
            alignment: const AlignmentDirectional(0, 0),
            child: DefaultTabController(
              length: 2,
              initialIndex: _currentTab,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentTab = 0;
                      });
                    },
                    child: const TabBar(
                      labelColor: Colors.purpleAccent,
                      indicatorColor: Colors.purpleAccent,
                      tabs: [
                        Tab(
                          text: 'Artist',
                        ),
                        Tab(
                          text: 'Music',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 462,
                                height: 393.45,
                                decoration: const BoxDecoration(
                                  color: Colors.amber,
                                ),
                                child: GridView.builder(
                                  itemCount: items.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                            const artistSecondPage(),
                                          ),
                                        );
                                      },
                                      child: Image.asset(items[index]),
                                    );
                                  },
                                  gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                  ),
                                ),
                              ),
                              // 여기 붙이기
                              const ArtistIndicator(),
                            ],
                          ),
                        ),
                        const MusicTapbar(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


//flutter life cycle
//ux적으로 첫 페이지에서

//앱 바 뺴놓고 앱 바 컴포넌트를 집어넣음 갈아끼움
//스캣 폴드 다 따로 만들고