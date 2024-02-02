import 'dart:ui';

import 'package:animelist_flutter/libs/api_libs.dart';
import 'package:animelist_flutter/utils/colors.dart';
import 'package:animelist_flutter/widgets/banner_image.dart';
import 'package:animelist_flutter/widgets/bottom_nav.dart';
import 'package:animelist_flutter/widgets/continue_watching.dart';
import 'package:animelist_flutter/widgets/populer_anime.dart';
import 'package:animelist_flutter/widgets/recommended_anime.dart';
import 'package:flutter/material.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rabka Animelist',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            icon: const Icon(Icons.menu, size: 30),
            color: primaryColor,
            onPressed: () {},
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(Icons.search, size: 30),
              color: primaryColor,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: BannerImage(),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Continue Watching",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ContinueWatching(),
            ),
            PopulerAnime(),
            RecommendedAnime(),
            SizedBox(
              height: 500,
            )
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: const BottomNav(),
        ),
      ),
    );
  }
}
