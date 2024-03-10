import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';

import '../constants/colors.dart';

class GChoiceChip extends StatelessWidget {
  final String label;
  final bool selected;
  final void Function(bool)? onSelected;
  const GChoiceChip({
    super.key,
    required this.label,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isColor = GHelperFunctions.getColor(label) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(label),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? GColors.white : null),
        avatar: isColor
            ? CircleAvatar(radius: 25, backgroundColor: GHelperFunctions.getColor(label)!)
            : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? GHelperFunctions.getColor(label)! : null,
      ),
    );
  }
}
