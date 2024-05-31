// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:real_estate/utils/constants/colors.dart';
// import 'package:real_estate/utils/constants/assets.dart';
// import 'package:real_estate/utils/constants/strings.dart';
// import 'package:real_estate/views/uiElements/sizedBox.dart';
//
// class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final VoidCallback onMenuPressed;
//   const CustomizedAppBar({super.key, required this.onMenuPressed});
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
//
//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         color: Theme.of(context).cardColor,
//         border: Border(
//           bottom: BorderSide(
//             color: Theme.of(context).shadowColor,
//             width: 1.5,
//           ),
//         ),
//       ),
//       child: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: false,
//         title: Animate().custom(
//           begin: 10,
//           end: 175,
//           duration: 1.seconds,
//           builder: (_, value, __) {
//             return Container(
//               height: 45,
//               width: value,
//               padding: const EdgeInsets.symmetric(horizontal: 18),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: black.withOpacity(0.01),
//                     blurRadius: 10,
//                     offset: const Offset(2, 2),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const Icon(
//                     Iconsax.location5,
//                     size: 22,
//                     color: primaryGreen,
//                   ),
//                   S(w: 5),
//                   const Text(
//                     'Saint Petersburg',
//                     style: TextStyle(
//                       color: primaryGreen,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ).animate().fadeIn(delay: 1.7.seconds),
//             );
//           },
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: kScreenHorizontalPadding),
//             child: Image.asset(
//               ImageAssets.user_image,
//               height: 50,
//               width: 50,
//             ).animate().scale(
//               duration: 1.seconds,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax/iconsax.dart';
import 'package:real_estate/utils/constants/colors.dart';
import 'package:real_estate/utils/constants/assets.dart';
import 'package:real_estate/views/uiElements/sizedBox.dart';

import '../../utils/constants/strings.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomizedAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Animate().custom(
        begin: 10,
        end: 175,
        duration: 1.seconds,
        builder: (_, value, __) {
          return Container(
            height: 40,
            width: value,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.01),
                  blurRadius: 10,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Iconsax.location5,
                  size: 20,
                  color: primaryGreen,
                ),
                S(w: 5),
                const Text(
                  'Saint Petersburg',
                  style: TextStyle(
                    color: primaryGreen,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ).animate().fadeIn(delay: 1.7.seconds),
          );
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: kScreenHorizontalPadding),
          child: Image.asset(
            ImageAssets.user_image,
            height: 40,
            width: 40,
          ).animate().scale(
                duration: 1.seconds,
              ),
        ),
      ],
    );
  }
}
