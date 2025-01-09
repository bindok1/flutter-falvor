import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:icons_plus/icons_plus.dart';

class EditorToolbar extends StatelessWidget {
  final QuillController controller;
  final DefaultStyles styles;

  const EditorToolbar({
    required this.controller,
    this.styles = const DefaultStyles(),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuillToolbar(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // Text Style
            QuillToolbarToggleStyleButton(
              attribute: Attribute.bold,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Icons.format_bold,
                tooltip: 'Bold',
              ),
            ),
            QuillToolbarToggleStyleButton(
              attribute: Attribute.italic,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Icons.format_italic,
                tooltip: 'Italic',
              ),
            ),
            QuillToolbarToggleStyleButton(
              attribute: Attribute.underline,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Icons.format_underline,
                tooltip: 'Underline',
              ),
            ),
            QuillToolbarToggleStyleButton(
              attribute: Attribute.strikeThrough,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Icons.strikethrough_s,
                tooltip: 'Strike Through',
              ),
            ),

            const VerticalDivider(),
            QuillToolbarToggleStyleButton(
              attribute: Attribute.h6,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Bootstrap.type,
                tooltip: 'Text',
              ),
            ),

            // Headers
            QuillToolbarToggleStyleButton(
              attribute: Attribute.h1,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Bootstrap.type_h1,
                tooltip: 'Heading 1',
              ),
            ),
            QuillToolbarToggleStyleButton(
              attribute: Attribute.h2,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Bootstrap.type_h2,
                tooltip: 'Heading 2',
              ),
            ),
            QuillToolbarToggleStyleButton(
              attribute: Attribute.h3,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Bootstrap.type_h3,
                tooltip: 'Heading 3',
              ),
            ),
            QuillToolbarToggleStyleButton(
              attribute: Attribute.h4,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Bootstrap.type_h4,
                tooltip: 'Heading 4',
              ),
            ),

            const VerticalDivider(),

            // Alignment
            QuillToolbarToggleStyleButton(
              attribute: Attribute.leftAlignment,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Icons.format_align_left,
                tooltip: 'Align Left',
              ),
            ),
            QuillToolbarToggleStyleButton(
              attribute: Attribute.centerAlignment,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Icons.format_align_center,
                tooltip: 'Center',
              ),
            ),

            const VerticalDivider(),

            // Lists
            QuillToolbarToggleStyleButton(
              attribute: Attribute.ul,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Icons.format_list_bulleted,
                tooltip: 'Bullet List',
              ),
            ),
            QuillToolbarToggleStyleButton(
              attribute: Attribute.ol,
              controller: controller,
              options: const QuillToolbarToggleStyleButtonOptions(
                iconData: Icons.format_list_numbered,
                tooltip: 'Numbered List',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
