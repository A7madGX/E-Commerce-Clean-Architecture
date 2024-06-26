import 'package:flutter/material.dart';

class GHeaderTitle extends StatelessWidget {
  final String header;
  final bool hasButton;
  final String? buttonText;
  final Color? color;
  final void Function()? onClick;
  const GHeaderTitle({
    super.key,
    required this.header,
    this.hasButton = false,
    this.buttonText,
    this.onClick,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          header,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: color),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        hasButton
            ? TextButton(
                onPressed: onClick,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(50, 24),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  alignment: Alignment.centerLeft,
                ),
                child: Text(
                  buttonText ?? 'Submit',
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
