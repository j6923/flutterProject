// 프로필 페이지
import 'package:flutter/material.dart';





export 'artistsecondPage.dart';

class artistSecondPage extends StatefulWidget {
  const artistSecondPage({Key? key}) : super(key: key);

  @override
  _ArtistSecondPage createState() => _ArtistSecondPage();
}




class _ArtistSecondPage extends State<artistSecondPage> {

   String? greeting;
   List<String>? instructions;

  final scaffoldKey = GlobalKey<ScaffoldState>();





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        automaticallyImplyLeading: false,
        leading:  IconButton(
          icon: Icon(Icons.home),
        onPressed: () {
          Navigator.of(context).pop();
        },


      //     actions:[
      // IconButton(
      // icon: Icon(Icons.home),

    ),

        title:


          const Text("Dflat。",


            style: TextStyle( //color: Color(0x00ffffff
                fontWeight: FontWeight.bold)),

        centerTitle: true,
        elevation: 2,



          //icon: Icon(Icons.home)
      ),


        body: SafeArea(

          child: GridView.count(
            crossAxisCount: 2, // 변경 가능한 값
            crossAxisSpacing: 20,
            mainAxisSpacing: 40,
            childAspectRatio: 1,
            padding: EdgeInsets.all(20),
            children: [
              _buildItem('assets/images/Producer.png', '이름과 위치', '크레딧', '유로피안 출신 런던 기반의 프로 투어 가수/작곡가입니다. 리드 보컬입니다.'),
              _buildItem('assets/images/Producer.png', '이름과 위치', '크레딧', '유로피안 출신 런던 기반의 프로 투어 가수/작곡가입니다. 리드 보컬입니다.'),
              _buildItem('assets/images/Producer.png', '이름과 위치', '크레딧', '유로피안 출신 런던 기반의 프로 투어 가수/작곡가입니다. 리드 보컬입니다.'),
            ],
          ),
        ),
    );
  }

   Widget _buildItem(String imageAsset, String name, String credits, String description) {
     return Container(
       child: Column(
         children: [
           Image.asset(imageAsset),
           Text(name),
           Text(credits),
           Text(description),
         ],
       ),
     );
   }
}