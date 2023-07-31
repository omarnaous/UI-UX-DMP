import 'package:dmptest/Components/order_nowcard.dart';
import 'package:dmptest/Components/resto_card.dart';
import 'package:dmptest/Components/resto_toptile.dart';
import 'package:dmptest/Components/search_card.dart';
import 'package:dmptest/Components/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_scrollbar/material_scrollbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List restos = [
    {"name": "مطعم الهندي الذهبي", "image": "Assets/indian_food.webp"},
    {"name": "Salt Restaurant", "image": "Assets/salt.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialScrollBar(
            thumbColor: Colors.orange,
            trackColor: Colors.orange.shade100,
            thickness: 5,
            radius: const Radius.circular(10),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomScrollView(
                  slivers: [
                    // Top bar that contains cities dropdown and notification bell and Profile Icon
                    const SliverToBoxAdapter(
                      child: TopBar(),
                    ),
                    // Custom Search Card to Search restos and food
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 8,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SearchCard(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 8,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: OrderNowCard(image: "Assets/rice.jpeg"),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 8,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: RestoTopTile(),
                      ),
                    ),
                    SliverList.builder(
                      itemCount: restos.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RestaurantCard(
                            restoName: restos[index]["name"],
                            minutes: "25-45",
                            image: restos[index]["image"],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
