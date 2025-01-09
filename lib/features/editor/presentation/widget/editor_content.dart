import 'package:base_2/shared/config/theme/editor_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditorContent extends StatelessWidget {
  final QuillController controller;
  final FocusNode focusNode;
  final ScrollController scrollController;

  const EditorContent({
    required this.controller,
    required this.focusNode,
    required this.scrollController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: QuillEditor(
            controller: controller,
            scrollController: scrollController,
            focusNode: focusNode,
            configurations: QuillEditorConfigurations(
              scrollable: true,
              autoFocus: false,
              placeholder: 'Start typing...',
              padding: EdgeInsets.zero,
              expands: true,
              scrollBottomInset: 0,
              enableInteractiveSelection: true,
              enableSelectionToolbar: true,
              showCursor: true,
              customStyles: EditorTheme.styles,
            ),
          ),
        ),
      ),
    );
  }
}