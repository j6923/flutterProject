// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/pages/home_page_copy/home_page_copy_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'HomePageCOpyCopyModel.dart';

import 'main.dart';
export 'HomePageCopyCopyWidget.dart';

class HomePageCopyCopyWidget extends StatefulWidget {
  const HomePageCopyCopyWidget({Key? key}) : super(key: key);

  @override
  _HomePageCopyCopyWidgetState createState() => _HomePageCopyCopyWidgetState();
}
// class HomePageCopyCopyModel  {
//   /// Initialization and disposal methods.
//
//   void initState(BuildContext context) {}
//
//   void dispose() {}
//
// /// Additional helper methods are added here.
//
// }



class _HomePageCopyCopyWidgetState extends State<HomePageCopyCopyWidget> {
  late HomePageCopyCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  // @override
  // void initState() {
  //   super.initState();
  //   _model = createModel(context, () => HomePageCopyCopyModel());
  // }

  // @override
  // void dispose() {
  //   _model.dispose();
  //
  //   _unfocusNode.dispose();
  //   super.dispose();
  // }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        automaticallyImplyLeading: false,
        title: Text("Dflat。"),

        centerTitle: true,
        elevation: 2,
      ),
      //   actions: [],
      //   centerTitle: true,
      //   elevation: 2,
      // ),
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
                  TabBar(
                    labelColor: Colors.teal,
                    // labelStyle: FlutterFlowTheme.of(context).bodyText1,
                    indicatorColor: Colors.yellow,
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
                            'assets/images/_2023-03-11_193633.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        // ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.indigo

                          ),
                          child: Image.asset(
                            'assets/images/discover.png',
                            width: 0,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
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
