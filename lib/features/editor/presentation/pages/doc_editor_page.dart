import 'package:base_2/core/utils/logger_util.dart';
import 'package:base_2/features/editor/presentation/widget/editor_content.dart';
import 'package:base_2/features/editor/presentation/widget/editor_metadata.dart';
import 'package:base_2/features/editor/presentation/widget/editor_toolbar.dart';
import 'package:base_2/features/home/data/models/doc_model.dart';
import 'package:base_2/features/home/services/docx_services.dart';
import 'package:base_2/shared/config/theme/editor_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class DocEditorPage extends StatefulWidget {
  final DocumentModel document;

  const DocEditorPage({
    required this.document,
    Key? key,
  }) : super(key: key);

  @override
  State<DocEditorPage> createState() => _DocEditorPageState();
}

class _DocEditorPageState extends State<DocEditorPage> {
  final DocService _docService = DocService();
  late QuillController _controller;
  late FocusNode _focusNode;
  late ScrollController _scrollController;
  bool _isLoading = true;
  Map<String, dynamic>? _metadata;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _scrollController = ScrollController();
    _loadDocument();
  }

  Future<void> _loadDocument() async {
    try {
      final jsonData = await _docService.loadDeltaFromDocument(widget.document);
      _metadata = jsonData['metadata'];
      _controller = QuillController(
        document: Document.fromJson(jsonData['ops']),
        selection: const TextSelection.collapsed(offset: 0),
      );
      setState(() => _isLoading = false);
    } catch (e) {
      LoggerUtil.err('Error loading document: $e');
      setState(() => _isLoading = false);
    }
  }

  Future<void> _saveDocument() async {
    try {
      final delta = _controller.document.toDelta();
      final content = {
        'ops': delta.toJson(),
        'metadata': _metadata,
      };

      // TODO: Implement save logic
      LoggerUtil.succ('Saving document: $content');
    } catch (e) {
      LoggerUtil.err('Error saving document: $e');
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditorMetadata(
        metadata: _metadata,
        onSave: _saveDocument,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                EditorToolbar(
                    controller: _controller, styles: EditorTheme.styles),
                EditorContent(
                  controller: _controller,
                  focusNode: _focusNode,
                  scrollController: _scrollController,
                ),
              ],
            ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
