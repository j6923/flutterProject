import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:smooth_page_indicator/smooth_page_indicator.dart' as smooth_page_indicator;

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'HomePageCopyCopyWidget.dart';
export 'main.dart';
export 'HomePageCopyModel.dart';
import 'dart:convert';

import 'HomePageCopyModel.dart';


void main() {
  runApp(HomePageCopyWidget());
}


class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({Key? key}) : super(key: key);

  @override
  State<HomePageCopyWidget> createState() => _HomePageCopyWidgetState();
}








class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
   late HomePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  // @override
  // void initState() {
  //   super.initState();
  //   _model = createModel(context, () => HomePageCopyModel());
  // }
  //
  // @override
  // void dispose() {
  //   _model.dispose();
  //
  //   _unfocusNode.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
        home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          automaticallyImplyLeading: false,
          title: Text("Dflat。"),

          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Align(
              alignment: AlignmentDirectional(0, 0),
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: Colors.purpleAccent,
                      // labelStyle: MaterialStateTextStyle,
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
                    Expanded(
                      child: TabBarView(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 462.7,
                                  height: 400,
                                  decoration: const BoxDecoration(
                                    color: Colors.lightBlue,

                                  ),
                                  child: GridView(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 1,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },

                                        child: Image.asset(
                                          'assets/images/m1.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },

                                        child: Image.asset(
                                          'assets/images/m2.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/m3.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/m4.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/m5.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/m6.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/m7.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/m8.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/m9.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/m10.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/m11.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomePageCopyCopyWidget(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/m12.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/m13.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/m14.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/m15.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/m16.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/m17.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/m18.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/m19.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.asset(
                                        'assets/images/m20.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                ),
                                Container(
                                  width: 451.2,
                                  height: 200,
                                  decoration: const BoxDecoration(
                                      color: Colors.indigo

                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 500,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(
                                              0, 0, 0, 50),
                                          child: PageView(
                                            // controller: _model
                                            //     .pageViewController ??=
                                            //     PageController(initialPage: 0),
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (BuildContext context) =>
                                                          HomePageCopyCopyWidget(),
                                                    ),
                                                  );
                                                },
                                                child: Image.asset(
                                                  'assets/images/Producer.png',
                                                  width: 100,
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Image.asset(
                                                'assets/images/Singer.png',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                              Image.asset(
                                                'assets/images/MixingEngineer.png',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                              Image.asset(
                                                'assets/images/SongWriter.png',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                              Image.asset(
                                                'assets/images/masteringEngineer.png',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                              Image.asset(
                                                'assets/images/SessionMusician.png',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),

                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(0, 1),
                                          child: Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 10),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller:
                                              PageController(initialPage: 0),
                                              count: 8,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) {
                                                _model.pageViewController!
                                                    .animateToPage(
                                                  i,
                                                  duration:
                                                  Duration(milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: const SlideEffect(
                                                  spacing:  8.0,
                                                  radius:  4.0,
                                                  dotWidth:  24.0,
                                                  dotHeight:  16.0,
                                                  paintStyle:  PaintingStyle.stroke,
                                                  strokeWidth:  1.5,
                                                  dotColor:  Colors.grey,
                                                  activeDotColor:  Colors.yellowAccent
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Colors.orange

                            ),
                            child: Column(
                              //전체 바 부분
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,

                               children: [


                                 Container(
                                   child:Row(
                                     //윗 바 부분 첫번째

                                     mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       SizedBox(
                                         child:  Image.asset(
                                                'assets/images/m1.png',
                                                width: 100,
                                                height: 50,
                                                fit: BoxFit.cover,
                                                  ),
                                                ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m2.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m3.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m4.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m5.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m6.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m7.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m8.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m9.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m10.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                     ],

                                   )
                                 ),
                                 Container(
                                   //바 두번째 줄
                                   padding: EdgeInsets.all(1),
                                   child:Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.center,

                                     children: [
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m11.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m12.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m13.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m14.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m15.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m16.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m17.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m18.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m19.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                       SizedBox(
                                         child:  Image.asset(
                                           'assets/images/m20.png',
                                           width: 100,
                                           height: 50,
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                     ],


                                   ),
                                 ),
                                 Container(
                                   padding: const EdgeInsets.all(4),
                                   // 바 밑에 박스
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       // 바 밑에 박스 가운데
                                       Container(
                                         width: 700,
                                         height:400,
                                         color: Colors.brown
                                       ),

                                       Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 5.0),

                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children:[
                                             // Padding(

                                             Container(

                                                 // child: const Column(
                                                 //   mainAxisAlignment: MainAxisAlignment.center,
                                                 //   crossAxisAlignment: CrossAxisAlignment.center,
                                                 //
                                                 // )
                                                 width: 300,
                                                 height: 200,
                                                 color:Colors.pinkAccent

                                             ),
                                             Container(
                                                width: 300,
                                                height: 200,
                                               color:Colors.grey
                                             ),
                                             // ),
                                           ]
                                         )

                                       )
                                     ],
                                   ),

                                 )
                               ],
                                )
                            )



                            ]
                      )
                          ),
                        ],
                      ),
                    ),
            )
          )
        )
        )
    );


        }




}


