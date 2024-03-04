import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';

class GMenuTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;
  const GMenuTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.trailing,
    this.onTap,
  });

  @override
  State<GMenuTile> createState() => _GMenuTileState();
}

class _GMenuTileState extends State<GMenuTile> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      splashColor: GColors.primary.withOpacity(0.5),
      onTap: widget.onTap,
      leading: Icon(
        widget.icon,
        size: GSizes.iconLmd,
        color: GColors.primary,
      ),
      title: Text(
        widget.title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        widget.subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: widget.trailing,
    );
  }

  @override
  bool get wantKeepAlive {
    return true;
  }
}
