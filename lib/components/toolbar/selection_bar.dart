import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saber/components/theming/adaptive_icon.dart';
import 'package:saber/i18n/strings.g.dart';

class SelectionBar extends StatelessWidget {
  final VoidCallback duplicateSelection;
  final VoidCallback deleteSelection;
  final VoidCallback moveUpOnePage;
  final VoidCallback moveDownOnePage;

  const SelectionBar({
    super.key,
    required this.duplicateSelection,
    required this.deleteSelection,
    required this.moveUpOnePage,
    required this.moveDownOnePage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        IconButton(
          onPressed: duplicateSelection,
          style: TextButton.styleFrom(
            foregroundColor: ColorScheme.of(context).secondary,
            backgroundColor: Colors.transparent,
            shape: const CircleBorder(),
          ),
          tooltip: t.editor.selectionBar.duplicate,
          icon: const AdaptiveIcon(
            icon: Icons.content_copy,
            cupertinoIcon: CupertinoIcons.doc_on_clipboard,
          ),
        ),
        IconButton(
          onPressed: deleteSelection,
          style: TextButton.styleFrom(
            foregroundColor: ColorScheme.of(context).secondary,
            backgroundColor: Colors.transparent,
            shape: const CircleBorder(),
          ),
          tooltip: t.editor.selectionBar.delete,
          icon: const AdaptiveIcon(
            icon: Icons.delete,
            cupertinoIcon: CupertinoIcons.delete,
          ),
          // This is for the buttons to move
          // text a page up,and down
        ),
        IconButton(
          onPressed: moveUpOnePage,
          style: TextButton.styleFrom(
            foregroundColor: ColorScheme.of(context).secondary,
            backgroundColor: Colors.transparent,
            shape: const CircleBorder(),
          ),
          icon: const AdaptiveIcon(
            icon: Icons.north,
            cupertinoIcon: CupertinoIcons.up_arrow,
          ),
        ),
        IconButton(
          onPressed: moveDownOnePage,
          style: TextButton.styleFrom(
            foregroundColor: ColorScheme.of(context).secondary,
            backgroundColor: Colors.transparent,
            shape: const CircleBorder(),
          ),
          icon: const AdaptiveIcon(
            icon: Icons.south,
            cupertinoIcon: CupertinoIcons.down_arrow,
          ),
        ),
      ],
    );
  }
}
