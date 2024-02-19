import 'package:devfin/app/app.dart';
import 'package:devfin/common_widgets/custom_scaffold/widgets/widgets.dart';
import 'package:devfin/common_widgets/widgets.dart';
import 'package:devfin/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DevFinScaffold extends ConsumerWidget {
  const DevFinScaffold({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) => GradientBackground(
        gradient: LinearGradient(
          colors: ref.watch(darkModeProvider)
              ? ColorsUtil.darkLinearGradient
              : ColorsUtil.lightLinearGradient,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: child,
          extendBody: true,
          drawer: const CustomDrawer(),
          bottomNavigationBar: const CustomBottomAppBar(),
        ),
      );
}
