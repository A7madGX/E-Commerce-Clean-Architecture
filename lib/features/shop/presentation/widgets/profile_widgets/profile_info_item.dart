import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileInfoItem extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final VoidCallback onPressed;
  const ProfileInfoItem({
    super.key,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtwItems / 2),
      child: InkWell(
        radius: 50,
        borderRadius: BorderRadius.circular(30),
        splashColor: GColors.primary.withOpacity(0.5),
        onTap: onPressed,
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  icon,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
