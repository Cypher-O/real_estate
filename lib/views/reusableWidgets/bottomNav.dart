import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax/iconsax.dart';
import 'package:real_estate/models/tab.dart';
import 'package:real_estate/utils/constants/colors.dart';
import 'package:real_estate/utils/constants/enums.dart';

// final autoPlay = ValueNotifier<bool>(true);

class BottomNavigation extends StatelessWidget {
  BottomNavigation({
    required this.currentTab,
    required this.onSelectTab,
    super.key,
  });

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  final tabItems = <TabModel>[
    TabModel(
      icon: Iconsax.search_normal_1,
      tabItem: TabItem.search,
    ),
    TabModel(
      icon: Iconsax.message5,
      tabItem: TabItem.message,
    ),
    TabModel(
      icon: Iconsax.home5,
      tabItem: TabItem.home,
    ),
    TabModel(
      icon: Iconsax.heart5,
      tabItem: TabItem.likes,
    ),
    TabModel(
      icon: Iconsax.user,
      tabItem: TabItem.profile,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 260,
          margin: const EdgeInsets.only(
            bottom: 25,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
          ),
          decoration: BoxDecoration(
            color: navbar,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: tabItems.map((item) {
              final isCurrent = currentTab == item.tabItem;
              return InkWell(
                onTap: () {
                  onSelectTab(item.tabItem);
                },
                child: AnimatedContainer(
                  height: isCurrent ? 50 : 45,
                  width: isCurrent ? 50 : 45,
                  duration: const Duration(milliseconds: 400),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCurrent ? navbarActive : navbarItem,
                  ),
                  child: Icon(
                    item.icon,
                    size: isCurrent ? 24 : 20,
                    color: white,
                  ),
                ),
              );
            }).toList(),
          ),
        )
            .animate(
              delay: 6.5.seconds,
              // autoPlay: autoPlay.value,
              // onComplete: (controller) {
              //   autoPlay.value = false;
              // },
            )
            .move(
              begin: const Offset(0, 100),
              curve: Curves.easeInOut,
              duration: const Duration(
                milliseconds: 900,
              ),
            ),
      ],
    );
  }
}
