import 'package:devfin/common_widgets/widgets.dart';
import 'package:devfin/features/explore/sample_data.dart';
import 'package:devfin/features/explore/widgets/widgets.dart';
import 'package:devfin/l10n/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  final List<Category> data = ExampleData.data;

  late TabController tabController;

  late AutoScrollController autoScrollController;

  @override
  void initState() {
    tabController = TabController(length: data.length, vsync: this);
    autoScrollController = AutoScrollController();
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    autoScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VerticalScrollableTabView(
        autoScrollController: autoScrollController,
        scrollbarThumbVisibility: false,
        tabController: tabController,
        listItemData: data,
        eachItemChild: (object, index) =>
            CategorySection(category: object as Category),
        slivers: [
          CustomHeader(
            title: 'Explore'.hardcoded,
            bottom: CustomTabBar(
              tabController: tabController,
              tabs: data.map((e) {
                return Tab(text: e.title);
              }).toList(),
              onTap: VerticalScrollableTabBarStatus.setIndex,
            ),
          ),
        ],
      ),
    );
  }
}
