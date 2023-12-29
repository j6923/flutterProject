import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'music_tapbar_box.dart';
// 아티스트 음악 순위
class MusicTapbar2 extends StatefulWidget {
  const MusicTapbar2({Key? key}) : super(key: key);

  @override
  State<MusicTapbar2> createState() => _MusicTapbar2State();
}

class _MusicTapbar2State extends State<MusicTapbar2> {
  MusicTapbarBox music_tapbar_box = MusicTapbarBox();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: music_tapbar_box,
            ),

            Container(
              width: 448,
              height: 300,
              color: Colors.indigo,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.play_circle),
                        Image.asset(
                          'assets/images/m17.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                        const Text("The Ballad of TR909"),
                        const Text("힙합"),
                        const VerticalDivider(
                          color: Colors.amber,
                          thickness: 60000,
                        ),
                        const Icon(Icons.favorite),
                        const Text("152"),
                        const Icon(Icons.chat),
                        const Text("45"),
                        const Icon(Icons.play_arrow),
                        SizedBox(
                          width: 61,
                          height: 20,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("view", textAlign: TextAlign.left,),

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
