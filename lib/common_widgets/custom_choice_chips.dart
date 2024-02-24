import 'package:devfin/app/app.dart';
import 'package:flutter/material.dart';

class CustomChoiceChips extends StatefulWidget {
  const CustomChoiceChips({required this.choices, this.onSelected, super.key});

  final List<String> choices;
  final void Function(bool)? onSelected;

  @override
  State<CustomChoiceChips> createState() => _CustomChoiceChipsState();
}

class _CustomChoiceChipsState extends State<CustomChoiceChips> {
  int? _value = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomColorsTheme>()!;

    return Container(
      constraints: const BoxConstraints(
        maxHeight: 40,
      ),
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 16, right: 16),
        itemCount: widget.choices.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GradientChip(
            title: widget.choices[index],
            onTap: () {
              setState(() {
                _value = index;
              });
              widget.onSelected?.call(true);
            },
            gradient: LinearGradient(
              colors: _value == index
                  ? colors.buttonGradient
                  : colors.disabledButtonGradient,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}

class GradientChip extends StatelessWidget {
  const GradientChip({
    required this.gradient,
    super.key,
    this.title,
    this.onTap,
  });
  final String? title;
  final VoidCallback? onTap;
  final LinearGradient gradient;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: gradient,
        ),
        child: Text(
          title ?? '',
        ),
      ),
    );
  }
}