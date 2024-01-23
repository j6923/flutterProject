# d_flat
```Dart
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
```

