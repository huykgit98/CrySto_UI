import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:devfin/app/app.dart';
import 'package:devfin/l10n/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomBottomAppBar extends ConsumerWidget {
  const CustomBottomAppBar({
    required this.hideAnimationController,
    super.key,
  });
  final AnimationController hideAnimationController;

  static final iconList = <IconData>[
    Icons.bar_chart_outlined,
    Icons.explore_outlined,
    Icons.search_sharp,
    Icons.star_border_outlined,
    FontAwesomeIcons.barsStaggered,
  ];

  static final activeIconList = <IconData>[
    Icons.bar_chart_rounded,
    Icons.explore_rounded,
    Icons.search_sharp,
    Icons.star_rounded,
    FontAwesomeIcons.barsStaggered,
  ];

  static final labelList = <String>[
    'Markets'.hardcoded,
    'Explore'.hardcoded,
    'Search'.hardcoded,
    'Watchlist'.hardcoded,
    'Menu'.hardcoded,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).extension<CustomColorsTheme>()!;

    return AnimatedBottomNavigationBar.builder(
      itemCount: ScaffoldTab.values.length,
      tabBuilder: (int index, bool isActive) {
        final color = isActive
            ? colors.activeNavigationBarColor
            : colors.notActiveNavigationBarColor;
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isActive ? activeIconList[index] : iconList[index],
              size: Sizes.p24,
              color: color,
            ),
            Text(
              labelList[index],
              style: TextStyle(color: color),
            ),
          ],
        );
      },
      activeIndex: _calculateSelectedIndex(context),
      splashSpeedInMilliseconds: 300,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      splashColor: Colors.black,
      gapLocation: GapLocation.none,
      backgroundGradient: LinearGradient(
        colors: colors.linearGradientBackground,
      ),
      leftCornerRadius: Sizes.p32,
      rightCornerRadius: Sizes.p32,
      onTap: (int idx) => _onItemTapped(idx, context),
      hideAnimationController: hideAnimationController,
      shadow: const BoxShadow(
        offset: Offset(0, 1),
        blurRadius: Sizes.p12,
        spreadRadius: 0.5,
        color: Colors.black12,
      ),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    HapticFeedback.selectionClick();

    switch (ScaffoldTab.values[index]) {
      case ScaffoldTab.markets:
        context.go(AppRoutes.markets);
      case ScaffoldTab.explore:
        context.go(AppRoutes.explore);
      case ScaffoldTab.search:
        context.go(AppRoutes.search);
      case ScaffoldTab.watchlist:
        context.go(AppRoutes.watchlist);
      case ScaffoldTab.settings:
        context.go(AppRoutes.settings);
    }
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    if (location.startsWith(AppRoutes.markets)) {
      return ScaffoldTab.markets.index;
    }
    if (location.startsWith(AppRoutes.explore)) {
      return ScaffoldTab.explore.index;
    }
    if (location.startsWith(AppRoutes.search)) {
      return ScaffoldTab.search.index;
    }
    if (location.startsWith(AppRoutes.watchlist)) {
      return ScaffoldTab.watchlist.index;
    }
    if (location.startsWith(AppRoutes.settings)) {
      return ScaffoldTab.settings.index;
    }
    return 0;
  }
}
