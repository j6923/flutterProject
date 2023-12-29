import 'package:d_flat/firstScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'artistSecondPage.dart';

import 'music_tapbar2.dart';

class MusicTapbar extends ConsumerStatefulWidget {
  const MusicTapbar({Key? key}) : super(key: key);

  @override
  _MusicTapbarState createState() => _MusicTapbarState();
}
//music tabBar
class _MusicTapbarState extends ConsumerState<MusicTapbar> {
  final futureProvider = FutureProvider((ref) {
    return Future.value([
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
    ]);
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Consumer(builder: (context, ref, _) {
                final items = ref.watch(futureProvider);

                return items.when(
                  data: (data) => GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    childAspectRatio: 4,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(8),
                    children: List.generate(data.length, (index) {
                      return GestureDetector(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const artistSecondPage(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            data[index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      );
                    }),
                  ),
                  loading: () => const CircularProgressIndicator(),
                  error: (error, stackTrace) => Text('Error: $error'),
                );
              }),
            ),
            const MusicTapbar2(),
          ],
        ),
      ),
    );
  }
}
