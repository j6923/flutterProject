import 'package:d_flat/firstScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
export 'main.dart';
export 'HomePageCopyModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


//final nameProvider = Provider((ref)=>'moon jeong');
final nameProvider = StateProvider<Widget?>((ref) => null);

void main() {
  runApp(const ProviderScope(child:  HomePageCopyWidget()));

    //runApp(const HomePageCopyWidget());


}


class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({Key? key}) : super(key: key);

  @override
  State<HomePageCopyWidget> createState() => _HomePageCopyWidgetState();
}








class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {


  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      title: 'D_flat',
        theme : ThemeData(
          primarySwatch: Colors.yellow,
        ),

        home: const FirstScreen()
        );
      }

    }







