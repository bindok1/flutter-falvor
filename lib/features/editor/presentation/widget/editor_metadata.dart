import 'package:flutter/material.dart';

class EditorMetadata extends StatelessWidget implements PreferredSizeWidget {
  final Map<String, dynamic>? metadata;
  final Future<void> Function() onSave;

  const EditorMetadata({
    required this.metadata,
    required this.onSave,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(metadata?['title'] ?? 'Document Editor'),
      actions: [
        IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () => _showMetadata(context),
        ),
        IconButton(
          icon: const Icon(Icons.save),
          onPressed: () async {
            try {
              await onSave();
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Document saved successfully')),
                );
              }
            } catch (e) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Failed to save document')),
                );
              }
            }
          },
        ),
      ],
    );
  }

  void _showMetadata(BuildContext context) {
    if (metadata != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Document Info'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Title: ${metadata!['title']}'),
              Text('Author: ${metadata!['author']}'),
              Text('Creator: ${metadata!['creator']}'),
              Text('Producer: ${metadata!['producer']}'),
              Text('Pages: ${metadata!['pageCount']}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
