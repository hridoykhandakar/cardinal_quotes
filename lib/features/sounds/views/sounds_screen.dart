import 'package:cardinal_quotes/core/constants/app_colors.dart';
import 'package:cardinal_quotes/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SoundsScreen extends StatelessWidget {
  SoundsScreen({super.key});
  final List<Map<String, dynamic>> dummyIconData = [
    {'text': '567.57k', 'iconUrl': 'assets/images/icons/eye.svg'},
    {'text': 'Share', 'iconUrl': 'assets/images/icons/share.svg'},
    {'text': 'Download', 'iconUrl': 'assets/images/icons/download.svg'},
    {'text': 'Save', 'iconUrl': 'assets/images/icons/save.svg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBg,
      appBar: AppBar(
        backgroundColor: AppColors.homeBg,
        title: const Text('Sounds', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  width: 350,
                  child: SoundCard(dummyIconData: dummyIconData),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class SoundCard extends StatelessWidget {
  const SoundCard({super.key, required this.dummyIconData});

  final List<Map<String, dynamic>> dummyIconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              // width: double.infinity,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),

              child: Stack(
                children: [
                  Image.asset('assets/images/sound_bg.png', fit: BoxFit.cover),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      // Or directly use Align here
                      child: Container(
                        height: 160,
                        width: 185,
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 14,
                          right: 14,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.color1,
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/sound_player.png"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Music: Wiper",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 5),
            Row(
              spacing: 14,
              children: [
                Text(
                  '#ambition',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                Text(
                  '#inspiration',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                Text(
                  '#motivitioanal',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: dummyIconData.map((data) {
                return TextButton.icon(
                  style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 0),
                    ),
                  ),
                  onPressed: () {},
                  label: Text(data['text']),
                  icon: SvgPicture.asset(
                    data['iconUrl'],
                    height: 20,
                    width: 20,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
