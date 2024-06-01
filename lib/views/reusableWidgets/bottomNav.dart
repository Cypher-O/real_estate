// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:real_estate/models/tab.dart';
// import 'package:real_estate/utils/constants/colors.dart';
// import 'package:real_estate/utils/constants/enums.dart';
//
// class BottomNavigation extends StatelessWidget {
//   BottomNavigation({
//     required this.currentTab,
//     required this.onSelectTab,
//     super.key,
//   });
//
//   final TabItem currentTab;
//   final ValueChanged<TabItem> onSelectTab;
//
//   final tabItems = <TabModel>[
//     TabModel(
//       icon: Iconsax.search_normal_1,
//       tabItem: TabItem.search,
//     ),
//     TabModel(
//       icon: Iconsax.message5,
//       tabItem: TabItem.message,
//     ),
//     TabModel(
//       icon: Iconsax.home5,
//       tabItem: TabItem.home,
//     ),
//     TabModel(
//       icon: Iconsax.heart5,
//       tabItem: TabItem.likes,
//     ),
//     TabModel(
//       icon: Iconsax.user,
//       tabItem: TabItem.profile,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           height: 60,
//           width: 260,
//           margin: const EdgeInsets.only(
//             bottom: 25,
//           ),
//           padding: const EdgeInsets.symmetric(
//             horizontal: 5,
//           ),
//           decoration: BoxDecoration(
//             color: navbar,
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: tabItems.map((item) {
//               final isCurrent = currentTab == item.tabItem;
//               return InkWell(
//                 onTap: () {
//                   onSelectTab(item.tabItem);
//                 },
//                 child: AnimatedContainer(
//                   height: isCurrent ? 50 : 45,
//                   width: isCurrent ? 50 : 45,
//                   duration: const Duration(milliseconds: 400),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: isCurrent ? navbarActive : navbarItem,
//                   ),
//                   child: Icon(
//                     item.icon,
//                     size: isCurrent ? 24 : 20,
//                     color: white,
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         )
//             .animate(
//               delay: 6.5.seconds,
//             )
//             .move(
//               begin: const Offset(0, 100),
//               curve: Curves.easeInOut,
//               duration: const Duration(
//                 milliseconds: 900,
//               ),
//             ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax/iconsax.dart';
import 'package:real_estate/models/tab.dart';
import 'package:real_estate/utils/constants/colors.dart';
import 'package:real_estate/utils/constants/enums.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({
    required this.currentTab,
    required this.onSelectTab,
    Key? key,
  }) : super(key: key);

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
  _BottomNavigationState createState() => _BottomNavigationState();
}
class _BottomNavigationState extends State<BottomNavigation> with TickerProviderStateMixin {
  late List<AnimationController> _animationControllers;
  late List<Animation<double>> _animations;
  late List<bool> _isAnimating;

  @override
  void initState() {
    super.initState();
    _animationControllers = List.generate(
      widget.tabItems.length,
          (index) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 400),
      )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _isAnimating[index] = false; // Update _isAnimating[index]
          });
        }
      }),
    );
    _animations = _animationControllers.map((controller) {
      return Tween<double>(begin: 20, end: 24).animate(controller);
    }).toList();
    _isAnimating = List.filled(widget.tabItems.length, false); // Initialize _isAnimating
  }

  @override
  void dispose() {
    for (final controller in _animationControllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
            children: List.generate(
              widget.tabItems.length,
                  (index) {
                final item = widget.tabItems[index];
                final isCurrent = widget.currentTab == item.tabItem;
                return InkWell(
                  onTap: () {
                    widget.onSelectTab(item.tabItem);
                    if (!_isAnimating[index]) {
                      _isAnimating[index] = true; // Reset _isAnimating[index]
                      _animationControllers[index].forward();
                    }
                  },
                  child: AnimatedContainer(
                    height: isCurrent ? 50 : 45,
                    width: isCurrent ? 50 : 45,
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isCurrent ? navbarActive : navbarItem,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          item.icon,
                          size: _animations[index].value,
                          color: white,
                        ),
                        AnimatedBuilder(
                          animation: _animationControllers[index],
                          builder: (context, child) {
                            return Transform.scale(
                              scale: _animationControllers[index].value,
                              child: Opacity(
                                opacity: _animationControllers[index].status == AnimationStatus.completed ? 0 : 1,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: white,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ).animate(
          delay: 6.5.seconds,
        ).move(
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
