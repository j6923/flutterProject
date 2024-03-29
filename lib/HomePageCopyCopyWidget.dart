// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/pages/home_page_copy/home_page_copy_widget.dart';
import 'package:flutter/material.dart';

import 'HomePageCOpyCopyModel.dart';

import 'main.dart';
export 'HomePageCopyCopyWidget.dart';
import 'firstScreen.dart';

class HomePageCopyCopyWidget extends StatefulWidget {
  const HomePageCopyCopyWidget({Key? key}) : super(key: key);

  @override
  _HomePageCopyCopyWidgetState createState() => _HomePageCopyCopyWidgetState();
}




class _HomePageCopyCopyWidgetState extends State<HomePageCopyCopyWidget> {
  late HomePageCopyCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const FirstScreen(),
              ),
            );
          },
        ),
        title: Text("Dflat。",


            style: TextStyle(//color: Color(0x00ffffff
          fontWeight: FontWeight.bold)),

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
                            'assets/images/m1.png',
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
}
