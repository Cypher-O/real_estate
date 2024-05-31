import 'dart:ui';
import 'package:real_estate/utils/imports/generalImports.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isToggled = useState(true);
    final isModalOpen = useState(false);
    final containerWidth = isToggled.value ? 100.0 : 50.0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Iconsax.search_normal_1,
                        size: 20,
                        color: primaryBlack,
                      ),
                      S(w: 8),
                      const GeneralTextDisplay(
                        'Saint Petersburg',
                        15,
                        textColor: primaryBlack,
                        noOfTextLine: 1,
                        textFontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ).animate().fadeIn(curve: Curves.easeOut).scale(
                      duration: 400.ms,
                    ),
              ),
              S(w: 7),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Iconsax.candle_2,
                  size: 20,
                  color: primaryBlack,
                ),
              ).animate().fadeIn(curve: Curves.easeOut).scale(
                    duration: 400.ms,
                  ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              ImageAssets.map,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            right: 50,
            child: HookBuilder(
              builder: (context) {
                return AnimatedContainer(
                  width: containerWidth,
                  height: 50,
                  duration: 600.ms,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: const BoxDecoration(
                    color: primaryOrange,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: isToggled.value
                        ? const GeneralTextDisplay(
                            r'13,3 mn $',
                            15,
                            textColor: white,
                            noOfTextLine: 1,
                            textFontWeight: FontWeight.w400,
                          )
                        : const Icon(
                            Iconsax.empty_wallet,
                            size: 18,
                            color: white,
                          ),
                  ),
                )
                    .animate(
                      delay: 0.3.seconds,
                    )
                    .fadeIn(curve: Curves.easeOut)
                    .slideX(
                      begin: -0.5,
                      duration: 600.ms,
                    );
              },
            ),
          ),
          Positioned(
            top: 300,
            left: 50,
            child: HookBuilder(
              builder: (context) {
                return AnimatedContainer(
                  width: containerWidth,
                  height: 50,
                  duration: 600.ms,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: const BoxDecoration(
                    color: primaryOrange,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: isToggled.value
                        ? const GeneralTextDisplay(
                            r'13,3 mn $',
                            15,
                            textColor: white,
                            noOfTextLine: 1,
                            textFontWeight: FontWeight.w400,
                          )
                        : const Icon(
                            Iconsax.empty_wallet,
                            size: 18,
                            color: white,
                          ),
                  ),
                )
                    .animate(
                      delay: 0.3.seconds,
                    )
                    .fadeIn(curve: Curves.easeOut)
                    .slideX(
                      begin: -0.5,
                      duration: 600.ms,
                    );
              },
            ),
          ),
          Positioned(
            top: 170,
            left: 100,
            child: HookBuilder(
              builder: (context) {
                return AnimatedContainer(
                  width: containerWidth,
                  height: 50,
                  duration: 600.ms,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: const BoxDecoration(
                    color: primaryOrange,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: isToggled.value
                        ? const GeneralTextDisplay(
                            r'13,3 mn $',
                            15,
                            textColor: white,
                            noOfTextLine: 1,
                            textFontWeight: FontWeight.w400,
                          )
                        : const Icon(
                            Iconsax.empty_wallet,
                            size: 18,
                            color: white,
                          ),
                  ),
                )
                    .animate(
                      delay: 0.3.seconds,
                    )
                    .fadeIn(curve: Curves.easeOut)
                    .slideX(
                      begin: -0.5,
                      duration: 600.ms,
                    );
              },
            ),
          ),
          Positioned(
            top: 240,
            right: 20,
            child: HookBuilder(
              builder: (context) {
                return AnimatedContainer(
                  width: containerWidth,
                  height: 50,
                  duration: 600.ms,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: const BoxDecoration(
                    color: primaryOrange,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: isToggled.value
                        ? const GeneralTextDisplay(
                            r'13,3 mn $',
                            15,
                            textColor: white,
                            noOfTextLine: 1,
                            textFontWeight: FontWeight.w400,
                          )
                        : const Icon(
                            Iconsax.empty_wallet,
                            size: 18,
                            color: white,
                          ),
                  ),
                )
                    .animate(
                      delay: 0.3.seconds,
                    )
                    .fadeIn(curve: Curves.easeOut)
                    .slideX(
                      begin: -0.5,
                      duration: 600.ms,
                    );
              },
            ),
          ),
          Positioned(
            top: 340,
            right: 70,
            child: HookBuilder(
              builder: (context) {
                return AnimatedContainer(
                  width: containerWidth,
                  height: 50,
                  duration: 600.ms,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: const BoxDecoration(
                    color: primaryOrange,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: isToggled.value
                        ? const GeneralTextDisplay(
                            r'13,3 mn $',
                            15,
                            textColor: white,
                            noOfTextLine: 1,
                            textFontWeight: FontWeight.w400,
                          )
                        : const Icon(
                            Iconsax.empty_wallet,
                            size: 18,
                            color: white,
                          ),
                  ),
                )
                    .animate(
                      delay: 0.3.seconds,
                    )
                    .fadeIn(curve: Curves.easeOut)
                    .slideX(
                      begin: -0.5,
                      duration: 600.ms,
                    );
              },
            ),
          ),
          Positioned(
            top: 440,
            left: 65,
            child: HookBuilder(
              builder: (context) {
                return AnimatedContainer(
                  width: containerWidth,
                  height: 50,
                  duration: 600.ms,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: const BoxDecoration(
                    color: primaryOrange,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: isToggled.value
                        ? const GeneralTextDisplay(
                            r'13,3 mn $',
                            15,
                            textColor: white,
                            noOfTextLine: 1,
                            textFontWeight: FontWeight.w400,
                          )
                        : const Icon(
                            Iconsax.empty_wallet,
                            size: 18,
                            color: white,
                          ),
                  ),
                )
                    .animate(
                      delay: 0.3.seconds,
                    )
                    .fadeIn(curve: Curves.easeOut)
                    .slideX(
                      begin: -0.5,
                      duration: 600.ms,
                    );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(
          bottom: 90,
          right: 15,
          left: 50,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedSwitcher(
                  duration: 500.ms,
                  child: isModalOpen.value
                      ? Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  isToggled.value = !isToggled.value;
                                  isModalOpen.value = !isModalOpen.value;
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Iconsax.shield_tick,
                                      size: 18,
                                      color: primaryBlack.withOpacity(.45),
                                    ),
                                    S(w: 6),
                                    GeneralTextDisplay(
                                      'Cosy areas',
                                      15,
                                      textColor: primaryBlack.withOpacity(.45),
                                      noOfTextLine: 1,
                                      textFontWeight: FontWeight.w400,
                                      letterSpacing: -0.6,
                                    ),
                                  ],
                                ),
                              ),
                              S(h: 15),
                              InkWell(
                                onTap: () {
                                  isToggled.value = !isToggled.value;
                                  isModalOpen.value = !isModalOpen.value;
                                },
                                child: Row(
                                  children: [
                                    const Icon(
                                      Iconsax.empty_wallet,
                                      size: 18,
                                      color: primaryOrange,
                                    ),
                                    S(w: 6),
                                    const Text(
                                      'Price',
                                      style: TextStyle(
                                        color: primaryOrange,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              S(h: 15),
                              InkWell(
                                onTap: () {
                                  isToggled.value = !isToggled.value;
                                  isModalOpen.value = !isModalOpen.value;
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Iconsax.bag,
                                      size: 18,
                                      color: primaryBlack.withOpacity(.45),
                                    ),
                                    S(w: 6),
                                    GeneralTextDisplay(
                                      'Infastructure',
                                      15,
                                      textColor: primaryBlack.withOpacity(.45),
                                      noOfTextLine: 1,
                                      textFontWeight: FontWeight.w400,
                                      letterSpacing: -0.6,
                                    ),
                                  ],
                                ),
                              ),
                              S(h: 15),
                              InkWell(
                                onTap: () {
                                  isToggled.value = !isToggled.value;
                                  isModalOpen.value = !isModalOpen.value;
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Iconsax.layer,
                                      size: 18,
                                      color: primaryBlack.withOpacity(.45),
                                    ),
                                    S(w: 6),
                                    GeneralTextDisplay(
                                      'Without any layer',
                                      15,
                                      textColor: primaryBlack.withOpacity(.45),
                                      noOfTextLine: 15,
                                      textFontWeight: FontWeight.w400,
                                      letterSpacing: -0.6,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ).animate().scaleXY(
                            begin: 0.5,
                            alignment: Alignment.bottomLeft,
                          )
                      : InkWell(
                          onTap: () => isModalOpen.value = !isModalOpen.value,
                          borderRadius: BorderRadius.circular(100),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 4,
                                sigmaY: 4,
                              ),
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.35),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Iconsax.layer,
                                    size: 20,
                                    color: white,
                                  ),
                                ),
                              ),
                            ),
                          ).animate().fadeIn(),
                        ),
                ).animate().fadeIn(curve: Curves.easeOut).scale(
                      duration: 400.ms,
                    ),
                S(h: 5),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4,
                      sigmaY: 4,
                    ),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200.withOpacity(0.35),
                      ),
                      child: const Center(
                        child: Icon(
                          Iconsax.direct_up,
                          size: 20,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ).animate().fadeIn(curve: Curves.easeOut).scale(
                      duration: 400.ms,
                    ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4,
                  sigmaY: 4,
                ),
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.35),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Iconsax.textalign_left,
                        size: 20,
                        color: white,
                      ),
                      S(w: 5),
                      const GeneralTextDisplay(
                        'List of variants',
                        15,
                        textColor: white,
                        noOfTextLine: 1,
                        textFontWeight: FontWeight.w600,
                        letterSpacing: -0.6,
                      ),
                    ],
                  ),
                ),
              ).animate().fadeIn(curve: Curves.easeOut).scale(
                    duration: 400.ms,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
