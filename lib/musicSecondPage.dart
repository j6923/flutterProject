// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/pages/home_page_copy/home_page_copy_widget.dart';
import 'package:flutter/material.dart';
import 'AppBarSplit.dart';



import 'musicSecondPageModel.dart';
export 'HomePageCopyCopyWidget.dart';

class MusicSecondPage extends StatefulWidget {
  const MusicSecondPage({Key? key}) : super(key: key);

  @override
  _MusicSecondPage createState() => _MusicSecondPage();
}


class _MusicSecondPage extends State<MusicSecondPage> {
 late musicSecondPageModel _model;
 String? greeting;
 List<String>? instructions;
 final AppBar appBar = AppBar();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();






  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const AppBarSplit(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Align(
            alignment: const AlignmentDirectional(0, 0),
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  // TabBar(
                  //   labelColor: Colors.teal,
                  //   // labelStyle: FlutterFlowTheme.of(context).bodyText1,
                  //   indicatorColor: Colors.yellow,
                  //   tabs: [
                  //     Tab(
                  //       text: 'Artist',
                  //     ),
                  //     Tab(
                  //       text: 'Music',
                  //     ),
                  //   ],
                  // ),
                  // Expanded(
                  //   child: TabBarView(
                  //     children: [
                        // InkWell(
                        //   onTap: () async {
                        //     await Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => HomePageCopyWidget(),
                        //       ),
                        //     );
                        //   },
                           Image.asset(
                            'assets/images/m10.png',
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        // ),
                        // Container(
                        //   width: 30,
                        //   height: 30,
                        //   decoration: BoxDecoration(
                        //     color: Colors.indigo
                        //
                        //   ),
                        //   child: Image.asset(
                        //     'assets/images/discover.png',
                        //     width: 0,
                        //     height: 100,
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              // ],
            ),
          ),
          );
    //     ),
    //   ),
    // );
  }

 PreferredSizeWidget appBarWidget() {
    return AppBar(
      backgroundColor: Colors.indigoAccent,
      automaticallyImplyLeading: false,
      leading:  IconButton(
        icon: const Icon(Icons.home),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
