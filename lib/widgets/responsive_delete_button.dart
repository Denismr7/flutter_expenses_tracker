import 'package:flutter/material.dart';

class ResponsiveDeleteButton extends StatelessWidget {
  final VoidCallback handlePressed;

  const ResponsiveDeleteButton({Key? key, required this.handlePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deleteButton = MediaQuery.of(context).size.width > 360
        ? TextButton.icon(
            onPressed: handlePressed,
            icon: const Icon(Icons.highlight_remove),
            label: const Text('Delete'),
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all(Theme.of(context).errorColor),
            ),
          )
        : IconButton(
            icon: const Icon(Icons.highlight_remove),
            color: Theme.of(context).errorColor,
            onPressed: handlePressed,
          );
    return deleteButton;
  }
}
